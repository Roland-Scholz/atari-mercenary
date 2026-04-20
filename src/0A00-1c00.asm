L0A00   LDA #$00
        TAX
        LDY #$1F
        STA $A010,X
        DEX
        BNE $0A05
        INC $0A07
        DEY
        BNE $0A05
        LDA #$1E
        STA COLOR0
        LDA #$38
        STA COLOR1
        LDA #$4C
        STA COLOR2
        LDA #$32
        STA COLOR4
        LDA #$10
        STA $B2
        LDA #$A0
        STA $B3
        LDA #$7A
        STA $B0
        LDA #$0A
        STA $B1
        LDY #$00
        LDA ($B0),Y
        BNE $0A53
        INC $B0
        BNE $0A41
        INC $B1
        LDA ($B0),Y
        BEQ $0A64
        CLC
        ADC $B2
        STA $B2
        LDA $B3
        ADC #$00
        STA $B3
        JMP $0A5B
        STA ($B2),Y
        INC $B2
        BNE $0A5B
        INC $B3
        INC $B0
        BNE $0A61
        INC $B1
        JMP $0A37
        LDX #$00
        LDA $1B10,X
        STA $BF00,X
        DEX
        BNE $0A66
        LDA #$00
        STA SDLSTL
        LDA #$BF
        STA SDLSTH
        RTS
        BRK
        ISB $B100,X
        NOP $00
        RLA RTCLOK+2
        BRK
        RLA POKMSK
        BRK
        RLA POKMSK
        BRK
        RLA $50
        BRK
        RLA $40
        BRK
        RLA $40
        BRK
        PHP
        ASL
        BRK
        ORA ($A0,X)
        ROL
        LDY #$A8
        KIL
        NOP #$00
        KIL
        TAX
        BRK
        ORA ($AA,X)
        TAX
        ASL
        BRK
        ORA ($A0,X)
        BRK
        ORA $4001
        BRK
        PHP
        ROL
        NOP #$A0
        TAY
        TAY
        TAY
        KIL
        NOP #$00
        ORA (CASINI,X)
        TAX
        NOP #$AA
        TAX
        ROL
        NOP #$A0
        BRK
        ORA $0001
        ORA #$2A
        NOP #$A0
        LDY #$28
        PLP
        KIL
        NOP #$00
        ORA (CASINI,X)
        LDX #$82
        LDY #$00
        ORA (ICAX1Z,X)
        NOP #$A0
        BRK
        ORA $0001
        ORA #$2A
        NOP #$A0
        LDY #$28
        PLP
        KIL
        KIL
        NOP #$0A
        NOP #$A2
        LDY #$00
        ORA (ICAX1Z,X)
        NOP #$A0
        BRK
        PHP
        ORA COLCRS,X
        BVC $0AF4
        KIL
        ORA $00
        ORA #$2A
        NOP #$A0
        LDY #$28
        PLP
        ASL
        ASL
        NOP #$0A
        BRK
        ORA ($A2,X)
        LDY #$00
        ORA (ICAX1Z,X)
        NOP #$A0
        BRK
        SLO RAMLO+1
        BVC $0B15
        ORA $40,X
        BRK
        ORA (RAMLO,X)
        BRK
        ORA #$2A
        LDY #$A0
        NOP #$08
        ROL
        ASL
        ASL
        NOP #$0A
        BRK
        ORA (ICCOMZ,X)
        LDY #$00
        ORA (ICAX1Z,X)
        LDY #$A0
        BRK
        SLO COLCRS
        BVC $0B33
        BRK
        ORA (ROWCRS,X)
        BRK
        ORA (RAMLO,X)
        BRK
        ORA #$28
        LDY #$A2
        NOP #$0A
        ASL
        ASL
        ASL
        NOP #$2A
        BRK
        ORA (ICCOMZ,X)
        LDY #$00
        ORA (ICBLLZ,X)
        LDY #$A0
        BRK
        ASL $01
        RTI
        NOP RAMLO,X
        BRK
        ORA (RAMLO+1,X)
        BRK
        ORA (RAMLO,X)
        BRK
        ORA #$28
        LDY #$A2
        NOP #$0A
        ASL
        PHP
        PLP
        LDY #$2A
        BRK
        ORA (CASINI,X)
        TAX
        TAX
        PLP
        LDY #$A0
        BRK
        ASL ROWCRS
        BRK
        ORA (RAMLO+1,X)
        NOP $00,X
        KIL
        NOP RTCLOK+2,X
        BRK
        ORA #$28
        LDY #$A2
        NOP #$0A
        ASL
        PLP
        PLP
        LDY #$28
        BRK
        ORA (CASINI,X)
        TAX
        TAX
        PLP
        LDY #$A0
        BRK
        ORA $01
        RTI
        BRK
        ORA ($01,X)
        BVC $0B92
        KIL
        ORA POKMSK
        BRK
        ORA #$28
        TAY
        LDX #$80
        ASL
        ASL
        PLP
        JSR $28A0
        BRK
        ORA (CASINI,X)
        LDY #$00
        ORA (ICBLLZ,X)
        TAY
        LDY #$00
        ORA RAMLO
        BRK
        SLO ($50,X)
        BRK
        SLO ($50,X)
        BRK
        ORA #$28
        PLP
        LDX #$80
        ASL
        ASL
        PLP
        JSR $28A0
        BRK
        ORA (CASINI,X)
        LDY #$00
        ORA (ICBLLZ,X)
        PLP
        LDY #$00
        ORA POKMSK
        BRK
        SLO (ROWCRS,X)
        BRK
        SLO ($50,X)
        BRK
        ORA #$28
        PLP
        LDX #$80
        ASL
        KIL
        JSR $A0A0
        ROL
        BRK
        ORA ($A2,X)
        LDY #$00
        ORA (ICBLLZ,X)
        PLP
        LDY #$00
        ORA $50
        BRK
        SLO ($45,X)
        BRK
        SLO (ROWCRS,X)
        BRK
        ORA #$28
        PLP
        LDX #$80
        ASL
        KIL
        LDY #$AA
        TAY
        ROL
        BRK
        ORA ($A2,X)
        LDY #$00
        ORA (ICBLLZ,X)
        PLP
        LDY #$00
        NOP $01
        RTI
        BRK
        SLO (SOUNDR,X)
        RTI
        BRK
        KIL
        EOR $00
        ORA #$28
        ROL
        LDY #$80
        PHP
        KIL
        LDY #$A0
        PLP
        ASL
        BRK
        ORA ($A2,X)
        LDY #$00
        ORA (ICBLLZ,X)
        ROL
        LDY #$00
        NOP $01
        RTI
        BRK
        KIL
        ORA ($40,X)
        BVC $0C2E
        ORA ($01,X)
        EOR ($00,X)
        ORA #$28
        ASL
        LDY #$A0
        PLP
        KIL
        LDY #$80
        PLP
        ASL
        BRK
        ORA ($A2,X)
        LDY #$00
        ORA (ICBLLZ,X)
        ASL
        LDY #$00
        NOP BUFADR
        BRK
        SLO ($01,X)
        BRK
        ORA (RTCLOK+2,X)
        BRK
        ORA ($01,X)
        BRK
        ORA ($50,X)
        BRK
        PHP
        PLP
        ASL
        LDY #$A0
        PLP
        BRK
        ORA ($80,X)
        NOP #$28
        ASL
        KIL
        LDX #$A0
        BRK
        ORA (ICBLLZ,X)
        ASL
        LDY #$00
        NOP BUFADR
        BRK
        SLO ($01,X)
        BRK
        ORA (RAMLO+1,X)
        BRK
        ORA ($01,X)
        BRK
        ORA (POKMSK,X)
        BRK
        PHP
        PLP
        ASL
        LDY #$A0
        PLP
        BRK
        ORA ($82,X)
        NOP #$2A
        KIL
        NOP #$A2
        LDY #$00
        ORA (ICBLLZ,X)
        ASL
        LDY #$00
        NOP $45
        RTI
        BRK
        KIL
        ORA $00
        ORA ($01,X)
        RTI
        ORA ($00,X)
        ORA (RAMLO,X)
        BRK
        PHP
        PLP
        ASL
        LDY #$A8
        TAY
        BRK
        ORA ($82,X)
        NOP #$2A
        KIL
        TAX
        LDX #$AA
        TAX
        PLP
        ASL
        LDY #$00
        NOP RAMLO
        BVC $0CB6
        KIL
        NOP $00
        KIL
        BVC $0CC1
        BRK
        ORA ($01,X)
        BRK
        PHP
        PLP
        KIL
        NOP #$2A
        LDY #$00
        ORA ($82,X)
        NOP #$2A
        BRK
        ORA ($AA,X)
        LDY #$AA
        TAX
        PLP
        KIL
        NOP #$00
        NOP RTCLOK+2
        NOP $00,X
        KIL
        NOP $00
        KIL
        NOP RAMLO,X
        BRK
        ORA ($01,X)
        BRK
        SLO ($A0),Y
        BRK
        ORA #$10
        ORA $00
        KIL
        NOP $00
        KIL
        ORA RAMLO
        BRK
        KIL
        RTI
        BRK
        KIL
        LDY #$00
        ORA #$10
        ORA ($40,X)
        BRK
        ORA (RTCLOK+2,X)
        BRK
        KIL
        ORA ($50,X)
        BRK
        KIL
        RTI
        BRK
        KIL
        LDY #$00
        PHP
        BPL $0D5C
        BRK
        ORA ($50,X)
        BRK
        ORA (POKMSK,X)
        BRK
        SLO ($50,X)
        BRK
        KIL
        BPL $0D19
        KIL
        LDY #$00
        PHP
        RTI
        RTI
        BRK
        ORA (RTCLOK+2,X)
        BRK
        ORA (BUFADR,X)
        EOR $40,X
        BRK
        ORA (RTCLOK+2,X)
        BRK
        KIL
        NOP $00
        SLO ICAX1Z
        TAX
        TAX
        TAX
        TAX
        TAX
        TAX
        TAX
        TAX
        TAX
        TAY
        LDX #$AA
        TAX
        TAX
        TAX
        LDY #$00
        SLO ($40,X)
        RTI
        BRK
        ORA (RAMLO+1,X)
        BRK
        ORA (ROWCRS,X)
        BRK
        ORA (RTCLOK+2,X)
        BRK
        ORA (COLCRS,X)
        BRK
        KIL
        NOP $00
        SLO ICAX1Z
        TAX
        TAX
        TAX
        TAX
        TAX
        TAX
        TAX
        TAX
        TAX
        TAY
        LDX #$AA
        TAX
        TAX
        TAX
        LDY #$00
        SLO ($01,X)
        RTI
        BRK
        ORA ($01,X)
        EOR $40
        BRK
        ORA ($01,X)
        EOR (HOLD1,X)
        RTI
        BRK
        ORA ($01,X)
        BRK
        KIL
        LDY #$00
        ORA $01
        BRK
        KIL
        ORA ($00,X)
        SLO (ROWCRS,X)
        RTI
        BRK
        KIL
        ORA $50,X
        BVC $0D8B
        ORA ($01,X)
        BRK
        KIL
        LDY #$00
        ORA $01
        RTI
        ORA ($01,X)
        BRK
        SLO (COLCRS,X)
        RTI
        BRK
        KIL
        EOR $50,X
        NOP $00,X
        ORA ($01,X)
        BRK
        KIL
        LDY #$00
        ASL $50
        BRK
        ORA (RAMLO+1,X)
        BRK
        KIL
        ORA (RAMLO+1,X)
        BRK
        KIL
        ORA (COLCRS,X)
        BVC $0DBA
        BRK
        KIL
        RTI
        BRK
        ORA ($A0),Y
        BRK
        ASL RTCLOK+2
        NOP RAMLO
        BRK
        KIL
        NOP $01,X
        RTI
        BRK
        ORA (RAMLO+1,X)
        EOR $50,X
        ORA ($40,X)
        ORA ($50,X)
        BRK
        CLC
        ORA POKMSK
        NOP $00
        KIL
        RTI
        ORA $50
        BRK
        ORA (BUFADR,X)
        EOR ROWCRS,X
        BRK
        ORA ($50,X)
        ORA (POKMSK,X)
        BRK
        CLC
        ORA ($50,X)
        NOP $00,X
        KIL
        RTI
        NOP RTCLOK+2
        BRK
        ORA (RAMLO+1,X)
        EOR COLCRS,X
        BRK
        ORA (RTCLOK+2,X)
        ORA (POKMSK,X)
        BRK
        ORA $1050,Y
        BRK
        ORA ($01,X)
        BRK
        ORA (RAMLO,X)
        ORA $00
        ORA ($01,X)
        EOR HOLD1,X
        BRK
        ORA (RAMLO+1,X)
        ORA RAMLO
        BRK
        ORA $1054,Y
        BRK
        ORA (RAMLO,X)
        BRK
        ORA (RAMLO,X)
        ORA ($40,X)
        BRK
        ORA (COLCRS,X)
        BVC $0E5C
        ORA ($44,X)
        NOP $00
        ORA $5045,Y
        BRK
        ORA (RAMLO,X)
        BRK
        ORA (RTCLOK+2,X)
        BRK
        ORA ($50,X)
        BRK
        ORA (BUFADR,X)
        BVC $0E71
        BRK
        ORA (ROWCRS,X)
        NOP $00
        ORA $4041,Y
        BRK
        ORA (POKMSK,X)
        BRK
        ORA (POKMSK,X)
        BRK
        ORA (RTCLOK+2,X)
        BRK
        ORA (BUFADR,X)
        BVC $0E57
        BRK
        ORA (RTCLOK+2,X)
        NOP $00
        CLC
        ORA ($00,X)
        ORA ($50,X)
        BRK
        ORA ($50,X)
        BRK
        ORA (POKMSK,X)
        BRK
        ORA (RAMLO+1,X)
        BRK
        ORA (BRKKEY,X)
        BVC $0E73
        BRK
        ORA (BUFADR,X)
        ORA ($00,X)
        CLC
        ORA ($01,X)
        NOP $00,X
        ORA ($40,X)
        BRK
        ORA ($50,X)
        BRK
        ORA ($01,X)
        RTI
        BPL $0EC4
        NOP $00
        ORA (BRKKEY,X)
        EOR ($00,X)
        CLC
        NOP $01
        ORA $01
        BRK
        KIL
        RTI
        BRK
        KIL
        BVC $0ED6
        BPL $0E89
        BRK
        ORA (POKMSK,X)
        BVC $0ECD
        BRK
        SLO RAMLO,X
        ORA ($01,X)
        EOR ($00,X)
        KIL
        RTI
        BRK
        KIL
        NOP $40,X
        BRK
        ORA ($01,X)
        BRK
        ORA ($50,X)
        NOP $40,X
        BRK
        SLO RAMLO,X
        ORA $00
        ORA (HOLD1,X)
        BRK
        ORA ($01,X)
        RTI
        BRK
        KIL
        ORA $40
        BRK
        ORA ($01,X)
        BRK
        ORA ($40,X)
        ORA $40
        BRK
        SLO RAMLO,X
        NOP $00
        ORA (RTCLOK+2,X)
        BRK
        ORA ($01,X)
        BRK
        SLO ($01,X)
        RTI
        BRK
        KIL
        RTI
        RTI
        ORA ($40,X)
        BRK
        SLO RAMLO,X
        NOP $00
        ORA (RAMLO+1,X)
        BRK
        ORA ($01,X)
        BRK
        ORA ($01,X)
        EOR $01,X
        BVC $0EDE
        KIL
        RTI
        RTI
        BRK
        ORA ($40,X)
        BRK
        SLO POKMSK,X
        NOP $00,X
        ORA (BUFADR,X)
        RTI
        ORA $00
        ORA (RTCLOK+2,X)
        BRK
        ORA (HOLD1,X)
        BPL $0EF5
        KIL
        EOR ($40),Y
        BRK
        ORA (POKMSK,X)
        BRK
        NOP POKMSK
        ASL RAMLO
        BRK
        SLO (BRKKEY,X)
        BPL $0F06
        ORA (POKMSK,X)
        BVC $0F0E
        BRK
        ORA ($50,X)
        BRK
        ORA (BUFADR,X)
        NOP $00,X
        KIL
        ORA ($00),Y
        KIL
        BPL $0F18
        NOP BUFADR
        RTI
        BRK
        ORA (RAMLO+1,X)
        NOP RAMLO+1,X
        EOR COLCRS,X
        BVC $0F29
        EOR COLCRS,X
        BRK
        SLO (COLCRS,X)
        BRK
        ORA (COLCRS,X)
        EOR COLCRS,X
        BPL $0F45
        BVC $0F47
        NOP $01,X
        EOR $50
        ORA RAMLO+1
        ORA (COLCRS,X)
        EOR $40,X
        EOR ROWCRS,X
        BRK
        ORA (COLCRS,X)
        RTI
        BRK
        ORA (RAMLO+1,X)
        BVC $0F47
        ORA (BUFADR,X)
        BVC $0F4C
        EOR COLCRS,X
        NOP $01,X
        EOR COLCRS,X
        RTI
        BRK
        ORA (RAMLO+1,X)
        EOR $40,X
        ORA COLCRS,X
        EOR $50,X
        ORA ROWCRS
        ORA ROWCRS
        ORA (RAMLO+1,X)
        BVC $0F68
        ORA ($40,X)
        EOR COLCRS,X
        BVC $0F7E
        BVC $0F6B
        ORA (BUFADR,X)
        BRK
        KIL
        ORA $50
        BRK
        ORA (BUFADR,X)
        BVC $0F77
        EOR COLCRS,X
        NOP $01,X
        EOR COLCRS,X
        RTI
        BRK
        ORA (BUFADR,X)
        EOR $50,X
        ORA COLCRS,X
        EOR $40,X
        ORA ROWCRS
        ORA (ROWCRS,X)
        NOP $01
        NOP RAMLO,X
        RTI
        BVC $0FE6
        EOR $50,X
        ORA $50,X
        BRK
        ORA (COLCRS,X)
        BRK
        KIL
        ORA ROWCRS
        BRK
        ORA (COLCRS,X)
        BVC $0FA2
        EOR COLCRS,X
        EOR $01,X
        EOR COLCRS,X
        BVC $0FA9
        ORA (BUFADR,X)
        EOR ROWCRS,X
        ORA COLCRS,X
        EOR $50,X
        ORA ROWCRS
        ORA ($50,X)
        BPL $0FB8
        NOP RTCLOK+2,X
        BPL $0FCF
        EOR COLCRS,X
        NOP RAMLO+1,X
        NOP $00,X
        ORA (ROWCRS,X)
        BRK
        KIL
        ORA ROWCRS
        BRK
        ORA (COLCRS,X)
        BVC $0FCD
        EOR COLCRS,X
        EOR $01,X
        EOR COLCRS,X
        BVC $0FD4
        ORA (COLCRS,X)
        RTI
        NOP BUFADR,X
        EOR COLCRS,X
        BVC $0FE2
        NOP $01,X
        NOP POKMSK,X
        ORA (COLCRS,X)
        BPL $0FF5
        ORA COLCRS
        EOR ROWCRS,X
        ORA ROWCRS
        BRK
        ORA (ROWCRS,X)
        BRK
        KIL
        ORA COLCRS
        ORA (COLCRS,X)
        BVC $0FF7
        NOP $00,X
        ORA ($01,X)
        EOR (COLCRS,X)
        EOR $50,X
        BRK
        ORA (COLCRS,X)
        BRK
        KIL
        ORA $40,X
        EOR (RTCLOK+2,X)
        ORA COLCRS
        ORA (COLCRS,X)
        RTI
        ORA (COLCRS,X)
        BPL $1014
        ORA (COLCRS,X)
        EOR ROWCRS,X
        ORA (ROWCRS,X)
        ORA ($50,X)
        BRK
        KIL
        ORA COLCRS
        ORA ($45,X)
        BVC $1021
        NOP $00,X
        KIL
        EOR (ROWCRS,X)
        ORA ROWCRS,X
        BRK
        ORA (COLCRS,X)
        BRK
        KIL
        ORA $40,X
        EOR (RAMLO,X)
        ORA COLCRS
        ORA (HOLD1,X)
        RTI
        ORA COLCRS
        BVC $103D
        BRK
        ORA (COLCRS,X)
        ORA COLCRS
        ORA (COLCRS,X)
        ORA ($50,X)
        BRK
        KIL
        ORA COLCRS
        EOR $45
        BVC $104B
        NOP $00,X
        KIL
        ORA (ROWCRS,X)
        ORA ROWCRS
        BRK
        ORA (COLCRS,X)
        BRK
        KIL
        ORA $40,X
        EOR $00
        ORA (RAMLO+1,X)
        EOR $01,X
        EOR ($50),Y
        ORA COLCRS
        RTI
        ORA ($00,X)
        ORA (COLCRS,X)
        ORA (COLCRS,X)
        ORA (COLCRS,X)
        ORA ($50,X)
        BRK
        KIL
        ORA $45
        EOR RAMLO+1
        BVC $1076
        NOP $00,X
        KIL
        ORA (ROWCRS,X)
        ORA ROWCRS
        ORA (ROWCRS,X)
        BRK
        KIL
        ORA $40,X
        NOP $00
        ORA (RAMLO+1,X)
        EOR $01,X
        EOR (RTCLOK+2),Y
        ORA COLCRS
        BVC $108F
        BRK
        ORA (COLCRS,X)
        ORA (COLCRS,X)
        BRK
        ORA (COLCRS,X)
        ORA $40
        BRK
        KIL
        ORA $45
        EOR RAMLO+1,X
        BVC $10A1
        NOP $00,X
        KIL
        ORA (ROWCRS,X)
        ORA ROWCRS
        ORA (ROWCRS,X)
        BRK
        KIL
        ORA $40,X
        NOP $00
        ORA (RAMLO+1,X)
        EOR SOUNDR,X
        EOR (RAMLO+1),Y
        ORA COLCRS,X
        BVC $10BA
        BRK
        ORA (COLCRS,X)
        ORA (COLCRS,X)
        BRK
        ORA (COLCRS,X)
        EOR $40
        BRK
        KIL
        ORA SOUNDR
        NOP RAMLO+1,X
        BVC $10CC
        NOP $00,X
        ORA ($40,X)
        ORA (ROWCRS,X)
        ORA ROWCRS
        ORA (ROWCRS,X)
        BRK
        KIL
        ORA $40,X
        NOP $00,X
        ORA (RAMLO+1,X)
        EOR SOUNDR,X
        BVC $10E2
        EOR COLCRS,X
        BVC $10E5
        ORA ($40,X)
        EOR $01,X
        EOR $00,X
        ORA (COLCRS,X)
        EOR $40
        BRK
        KIL
        ORA SOUNDR
        NOP RAMLO+1,X
        BVC $10F8
        EOR COLCRS,X
        BVC $10FC
        NOP RAMLO+1,X
        BVC $1100
        BVC $1101
        KIL
        ORA COLCRS,X
        EOR $00,X
        ORA (RAMLO+1,X)
        EOR $45,X
        BVC $110C
        ORA (COLCRS,X)
        EOR ROWCRS,X
        BRK
        ORA ($40,X)
        EOR $01,X
        NOP $00,X
        ORA (BUFADR,X)
        EOR $00,X
        SLO (RAMLO+1,X)
        RTI
        BVC $1125
        BVC $1123
        EOR COLCRS,X
        BVC $1127
        NOP BUFADR,X
        BVC $112B
        BVC $112C
        KIL
        ORA COLCRS,X
        EOR $00,X
        ORA (RAMLO+1,X)
        EOR $45,X
        BVC $1137
        ORA (BUFADR,X)
        EOR ROWCRS,X
        BRK
        ORA ($40,X)
        EOR RAMLO+1,X
        NOP $00,X
        ORA (BUFADR,X)
        EOR $00,X
        SLO (RAMLO+1,X)
        RTI
        BVC $1150
        BVC $114E
        EOR COLCRS,X
        NOP $01,X
        EOR COLCRS,X
        BVC $1156
        BVC $1157
        KIL
        ORA COLCRS,X
        EOR $40,X
        ORA $45
        EOR $50,X
        BRK
        ORA (COLCRS,X)
        EOR ROWCRS,X
        BRK
        ORA ($40,X)
        EOR COLCRS,X
        NOP $00,X
        ORA (BUFADR,X)
        EOR $00,X
        SLO (RAMLO+1,X)
        RTI
        BPL $117A
        BVC $1178
        EOR COLCRS,X
        NOP $01,X
        NOP COLCRS,X
        RTI
        ORA ($50,X)
        BRK
        KIL
        ORA COLCRS,X
        EOR $40,X
        ORA $45
        EOR $50,X
        BRK
        ORA (COLCRS,X)
        EOR COLCRS,X
        BRK
        ORA ($40,X)
        EOR BUFADR,X
        BVC $1196
        ORA (RAMLO+1,X)
        NOP $00,X
        SLO (RAMLO+1,X)
        RTI
        BRK
        ORA (RAMLO+1,X)
        BVC $11A3
        NOP $00,X
        ORA (RAMLO+1,X)
        ORA (ROWCRS,X)
        EOR $00,X
        ORA ($01,X)
        BVC $11AE
        KIL
        ORA SOUNDR,X
        RTI
        BVC $11B9
        EOR COLCRS
        BVC $11B8
        ORA (COLCRS,X)
        ORA COLCRS
        BRK
        ORA (POKMSK,X)
        EOR BUFADR,X
        NOP $00,X
        ORA (RAMLO+1,X)
        NOP $00,X
        SLO (RAMLO+1,X)
        RTI
        BRK
        ORA (RAMLO+1,X)
        BVC $11D0
        NOP $00,X
        ORA ($01,X)
        ORA (ROWCRS,X)
        ORA $40,X
        ORA ($50,X)
        BRK
        KIL
        ORA SOUNDR,X
        RTI
        BPL $11E5
        EOR COLCRS
        BVC $11E4
        ORA (ROWCRS,X)
        ORA (COLCRS,X)
        RTI
        BPL $1240
        ORA COLCRS
        BRK
        ORA (RAMLO+1,X)
        NOP $00,X
        SLO (RAMLO+1,X)
        RTI
        BRK
        ORA (RAMLO+1,X)
        BVC $11FB
        NOP $00,X
        KIL
        ORA (ROWCRS,X)
        ORA $50,X
        ORA ($50,X)
        BRK
        KIL
        ORA SOUNDR,X
        BVC $1209
        ORA (RAMLO+1,X)
        EOR (COLCRS,X)
        BVC $1210
        NOP $01,X
        EOR $40,X
        BPL $126A
        ORA COLCRS
        RTI
        ORA ROWCRS
        BRK
        SLO (RAMLO+1,X)
        RTI
        BRK
        ORA (RAMLO+1,X)
        BVC $1224
        NOP $00,X
        KIL
        ORA (ROWCRS,X)
        ORA ROWCRS,X
        ORA (ROWCRS,X)
        BRK
        KIL
        ORA SOUNDR,X
        NOP $00,X
        ORA (RAMLO+1,X)
        EOR (COLCRS,X)
        BVC $1239
        NOP $01,X
        EOR $40,X
        BPL $1293
        ORA COLCRS
        BVC $1247
        NOP $00,X
        SLO (RAMLO+1,X)
        RTI
        BRK
        ORA (RAMLO+1,X)
        BVC $124D
        NOP $00,X
        KIL
        ORA (ROWCRS,X)
        ORA ROWCRS,X
        ORA (ROWCRS,X)
        BRK
        KIL
        ORA SOUNDR,X
        ORA $00
        ORA (RAMLO+1,X)
        EOR (COLCRS,X)
        BVC $1262
        NOP $01,X
        EOR $50,X
        BPL $12BC
        ORA COLCRS
        NOP RAMLO+1,X
        NOP $00,X
        SLO (RAMLO+1,X)
        RTI
        BRK
        ORA (RAMLO+1,X)
        BVC $1276
        NOP $00,X
        KIL
        ORA (ROWCRS,X)
        ORA COLCRS
        ORA (ROWCRS,X)
        BRK
        KIL
        ORA SOUNDR,X
        ORA ($40,X)
        ORA $40
        EOR $50,X
        ORA COLCRS
        ORA COLCRS
        BVC $129E
        EOR $01,X
        EOR RAMLO+1,X
        ORA ROWCRS
        BRK
        SLO (RAMLO+1,X)
        RTI
        BRK
        ORA (RAMLO+1,X)
        BVC $129E
        NOP $00,X
        KIL
        ORA (ROWCRS),Y
        ORA COLCRS
        BRK
        ORA (COLCRS,X)
        BRK
        KIL
        ORA SOUNDR,X
        BRK
        ORA ($50,X)
        EOR SOUNDR
        EOR $50,X
        ORA COLCRS
        EOR COLCRS,X
        BVC $12C8
        EOR $01,X
        EOR SOUNDR,X
        EOR ROWCRS,X
        BRK
        SLO (RAMLO+1,X)
        RTI
        BRK
        ORA (RAMLO+1,X)
        BVC $12C8
        NOP $00,X
        KIL
        EOR (ROWCRS),Y
        ORA COLCRS
        BRK
        ORA (COLCRS,X)
        BRK
        ORA (RAMLO,X)
        ORA SOUNDR,X
        BRK
        ORA (BUFADR,X)
        EOR SOUNDR
        EOR $50,X
        ORA COLCRS
        EOR COLCRS,X
        NOP $40,X
        EOR $01,X
        EOR $40,X
        EOR ROWCRS,X
        BRK
        SLO (RAMLO+1,X)
        RTI
        BRK
        ORA (RAMLO+1,X)
        BVC $12F3
        NOP $00,X
        ORA ($01,X)
        EOR (ROWCRS),Y
        ORA (COLCRS,X)
        RTI
        EOR $00,X
        ORA (RTCLOK+2,X)
        ORA SOUNDR,X
        BRK
        ORA (RAMLO+1,X)
        EOR SOUNDR
        ORA $50,X
        ORA COLCRS
        EOR COLCRS,X
        NOP $40,X
        EOR $00,X
        ORA (COLCRS,X)
        BVC $1329
        NOP $00,X
        SLO (RAMLO+1,X)
        RTI
        BRK
        ORA (RAMLO+1,X)
        BVC $131F
        NOP $00,X
        ORA (RAMLO+1,X)
        EOR (ROWCRS),Y
        ORA (COLCRS,X)
        RTI
        EOR $40,X
        NOP BUFADR,X
        EOR ($00,X)
        ORA (BUFADR,X)
        EOR $45
        ORA $50,X
        ORA HOLD1,X
        BRK
        ORA (BUFADR,X)
        NOP $40,X
        EOR $01,X
        EOR $50,X
        ORA ROWCRS,X
        BRK
        SLO (RAMLO+1,X)
        RTI
        BRK
        ORA (RAMLO+1,X)
        BVC $134A
        EOR COLCRS,X
        EOR SOUNDR,X
        NOP $00,X
        ORA (COLCRS,X)
        BVC $1368
        EOR ROWCRS,X
        ORA COLCRS,X
        EOR COLCRS,X
        EOR $44,X
        ORA $50,X
        ORA HOLD1,X
        BRK
        ORA (RAMLO+1,X)
        EOR $40,X
        EOR $01,X
        ORA ROWCRS,X
        EOR ROWCRS,X
        BRK
        SLO (RAMLO+1,X)
        RTI
        BRK
        ORA (RAMLO+1,X)
        BVC $1374
        EOR COLCRS,X
        EOR SOUNDR,X
        NOP $00,X
        ORA (BUFADR,X)
        BVC $1392
        EOR $50,X
        ORA COLCRS,X
        EOR COLCRS,X
        ORA $44,X
        ORA $50
        ORA $45,X
        BRK
        ORA (RAMLO+1,X)
        EOR SOUNDR,X
        EOR $01,X
        ORA ROWCRS
        EOR ROWCRS
        BRK
        SLO (RAMLO+1,X)
        RTI
        BRK
        ORA (RAMLO+1,X)
        BVC $139E
        EOR COLCRS,X
        EOR $01,X
        NOP $00,X
        ORA (BUFADR,X)
        BVC $13AC
        EOR $40,X
        ORA COLCRS,X
        EOR ROWCRS,X
        ORA $44
        ORA HOLD1
        EOR $44,X
        BRK
        ORA (RAMLO+1,X)
        EOR SOUNDR,X
        EOR $01,X
        ORA ROWCRS
        EOR ROWCRS
        BRK
        SLO (BUFADR,X)
        BVC $13C3
        ORA (BUFADR,X)
        NOP $01,X
        EOR COLCRS,X
        EOR RAMLO+1,X
        EOR $00,X
        ORA (RAMLO+1,X)
        NOP $00,X
        ORA (COLCRS,X)
        BRK
        ORA (BUFADR,X)
        EOR COLCRS,X
        NOP BUFADR,X
        NOP RAMLO+1,X
        EOR (COLCRS),Y
        NOP $00,X
        ORA (BUFADR,X)
        EOR HOLD1,X
        EOR SOUNDR,X
        ORA (COLCRS,X)
        EOR COLCRS,X
        BRK
        ANC #$04
        BRK
        ASL
        RTI
        BPL $13F3
        BVC $13F4
        ORA ($01,X)
        BRK
        ORA (RTCLOK+2,X)
        BRK
        KIL
        ORA (BUFADR,X)
        BRK
        ORA ($01,X)
        BRK
        ORA ($01,X)
        NOP $00
        SLO $40,X
        BRK
        ORA ($01,X)
        NOP $00,X
        KIL
        RTI
        BPL $1410
        KIL
        NOP RAMLO+1
        BRK
        ORA ($01,X)
        BRK
        ORA ($01,X)
        NOP $00
        SLO $40,X
        BRK
        KIL
        EOR $00,X
        KIL
        RTI
        BPL $1425
        KIL
        NOP RAMLO+1
        RTI
        NOP $00
        ORA ($01,X)
        NOP $00
        SLO $40,X
        BRK
        KIL
        EOR ($40,X)
        BRK
        ORA (POKMSK,X)
        BVC $143A
        KIL
        BPL $1441
        BVC $1443
        BRK
        ORA (RAMLO+1,X)
        NOP $00
        SLO $40,X
        BRK
        KIL
        RTI
        BVC $144B
        ORA (POKMSK,X)
        RTI
        BRK
        KIL
        BPL $1466
        NOP RAMLO,X
        BRK
        ORA (RAMLO,X)
        NOP $00
        SLO POKMSK,X
        BRK
        ORA ($01,X)
        RTI
        NOP $00,X
        ORA (RAMLO,X)
        RTI
        BRK
        KIL
        RTI
        BPL $146E
        NOP $00
        ORA (RAMLO,X)
        BPL $146F
        SLO POKMSK,X
        BRK
        ORA ($01,X)
        BPL $147B
        BRK
        ORA (RAMLO,X)
        RTI
        BRK
        ORA ($01,X)
        BRK
        ORA (POKMSK,X)
        ORA ($50,X)
        BRK
        ORA (RTCLOK+2,X)
        BPL $1487
        SLO POKMSK,X
        BRK
        ORA ($01,X)
        BPL $148F
        RTI
        ORA ($40,X)
        BRK
        ORA (RAMLO+1,X)
        BRK
        ORA ($50,X)
        BRK
        ORA ($50,X)
        BRK
        ORA (POKMSK,X)
        BPL $149F
        SLO POKMSK,X
        BRK
        ORA (RAMLO+1,X)
        BPL $14A6
        ORA ($50,X)
        ORA ($40,X)
        BRK
        ORA (RTCLOK+2,X)
        BRK
        ORA ($40,X)
        BRK
        ORA (RTCLOK+2,X)
        BRK
        ORA (POKMSK,X)
        BPL $14B8
        SLO POKMSK,X
        BRK
        ORA (RAMLO,X)
        NOP $00,X
        ORA (RTCLOK+2,X)
        ORA (RTCLOK+2,X)
        ORA ($50,X)
        BRK
        ORA ($40,X)
        BRK
        ORA (COLCRS,X)
        BRK
        ORA (POKMSK,X)
        BPL $14D0
        SLO RAMLO,X
        BRK
        ORA (RAMLO,X)
        NOP $00
        ORA (RAMLO+1,X)
        NOP RAMLO+1
        ORA $00
        KIL
        RTI
        BRK
        ORA (SOUNDR,X)
        RTI
        BVC $1525
        BRK
        SLO RAMLO,X
        BRK
        ORA (RAMLO,X)
        NOP $00
        ORA ($01,X)
        NOP $00
        SLO ($01,X)
        RTI
        BRK
        ORA ($40,X)
        BVC $1539
        RTI
        BRK
        SLO RAMLO,X
        BRK
        ORA (RTCLOK+2,X)
        ORA ($00,X)
        KIL
        NOP $00,X
        SLO ($01,X)
        BRK
        ORA ($01,X)
        BRK
        ORA (RTCLOK+2,X)
        RTI
        RTI
        BRK
        SLO RAMLO,X
        BRK
        ORA (POKMSK,X)
        ORA ($00,X)
        KIL
        NOP $00,X
        SLO ($01,X)
        BRK
        ORA ($01,X)
        BRK
        ORA (RAMLO+1,X)
        RTI
        RTI
        BRK
        SLO RAMLO+1,X
        BRK
        ORA (POKMSK,X)
        ORA ($00,X)
        KIL
        ORA $00,X
        SLO (RAMLO+1,X)
        BRK
        ORA ($01,X)
        BRK
        ORA ($01,X)
        RTI
        RTI
        BRK
        SLO $01,X
        RTI
        BVC $153F
        ORA ($40,X)
        BRK
        ORA (BRKKEY,X)
        RTI
        BRK
        KIL
        NOP $00
        ORA (RAMLO,X)
        BRK
        ORA ($01,X)
        EOR ($00),Y
        CLC
        ORA ($50,X)
        RTI
        BRK
        ORA ($50,X)
        BRK
        ORA (POKMSK,X)
        BRK
        SLO (RAMLO,X)
        BRK
        ORA (RTCLOK+2,X)
        BRK
        ORA ($01,X)
        ORA $00,X
        ORA $4054,Y
        BRK
        ORA (POKMSK,X)
        BRK
        KIL
        NOP $00,X
        KIL
        NOP $00
        ORA (POKMSK,X)
        BRK
        ORA (RAMLO+1,X)
        ORA $00
        ORA $4045,Y
        BRK
        ORA (RAMLO,X)
        BRK
        KIL
        NOP $00
        KIL
        NOP $00,X
        SLO (RAMLO,X)
        ORA $40
        BRK
        CLC
        EOR ($40,X)
        BRK
        ORA (RAMLO,X)
        BRK
        ORA ($40,X)
        BRK
        ORA ($40,X)
        BRK
        ORA (POKMSK,X)
        BRK
        SLO (RAMLO,X)
        NOP $50
        BRK
        CLC
        EOR ($50,X)
        BRK
        ORA ($01,X)
        ORA ($40,X)
        BRK
        ORA ($40,X)
        BRK
        ORA (POKMSK,X)
        ORA ($00,X)
        KIL
        NOP RAMLO,X
        NOP $00,X
        CLC
        ORA RTCLOK+2,X
        BRK
        KIL
        EOR ($00,X)
        KIL
        NOP $00,X
        ORA ($50,X)
        BRK
        SLO (POKMSK,X)
        BPL $15CB
        BRK
        CLC
        NOP RAMLO+1,X
        BRK
        KIL
        EOR ($00,X)
        NOP $40
        BRK
        SLO (POKMSK,X)
        BPL $15D6
        RTI
        BRK
        SLO RTCLOK+2,X
        ORA ($40,X)
        BRK
        ORA (BUFADR,X)
        BRK
        KIL
        ORA ($40,X)
        RTI
        BVC $15E5
        KIL
        BPL $1638
        BRK
        ORA ($40,X)
        BRK
        SLO RAMLO,X
        BRK
        ORA ($50,X)
        BRK
        ORA (RAMLO+1,X)
        BRK
        SLO ($50,X)
        RTI
        BRK
        SLO ($50,X)
        RTI
        BRK
        ORA $0001,Y
        ORA (RTCLOK+2,X)
        BRK
        ORA (RAMLO,X)
        RTI
        BRK
        KIL
        ORA $44,X
        BRK
        SLO (SOUNDR,X)
        BRK
        NOP
        ORA ($00,X)
        ORA (RAMLO+1,X)
        BRK
        ORA (RAMLO,X)
        NOP $00
        KIL
        ORA $40
        BRK
        SLO (SOUNDR,X)
        BRK
        NOP
        ORA ($00,X)
        ORA ($01,X)
        RTI
        BRK
        NOP $01
        RTI
        BRK
        KIL
        ORA (SOUNDR,X)
        BRK
        SLO $0040,Y
        ORA ($50,X)
        BPL $1635
        ORA ($44,X)
        BRK
        ORA ($45,X)
        BVC $163C
        KIL
        ORA (RAMLO,X)
        BRK
        SLO $0040,Y
        ORA (RTCLOK+2,X)
        BPL $1647
        ORA (RAMLO+1,X)
        ORA ($44,X)
        NOP $00,X
        KIL
        ORA (RAMLO,X)
        BRK
        SLO POKMSK,Y
        ORA (RAMLO+1,X)
        BVC $1658
        SLO (RAMLO,X)
        ORA $00
        KIL
        ORA (POKMSK,X)
        BRK
        SLO RAMLO,Y
        ORA ($01,X)
        RTI
        BRK
        SLO (RAMLO,X)
        BRK
        SLO (RAMLO+1,X)
        RTI
        BRK
        SLO RAMLO,Y
        ORA ($01,X)
        RTI
        BRK
        SLO (RTCLOK+2,X)
        BRK
        ORA ($50,X)
        BRK
        ORA (RAMLO,X)
        RTI
        BRK
        SLO $0001,Y
        ORA ($01,X)
        BVC $1686
        SLO (POKMSK,X)
        BRK
        ORA (RAMLO,X)
        BRK
        ORA (RAMLO+1,X)
        BRK
        NOP $0001,X
        ORA ($01,X)
        NOP $00,X
        SLO BUFADR
        BRK
        ORA $0140,X
        ORA $00
        SLO ($50,X)
        BRK
        SLO (RTCLOK+2,X)
        BRK
        ORA $0110,X
        ORA ($40,X)
        BRK
        ORA $50
        BPL $16AE
        ORA $0514,X
        BRK
        ORA (POKMSK,X)
        BRK
        ASL $50
        BRK
        ORA $0401,X
        BRK
        NOP $40
        BRK
        AND ($01,X)
        NOP $00
        ORA (RAMLO+1,X)
        BRK
        ORA ($01,X)
        BRK
        RLA (ROWCRS,X)
        BRK
        KIL
        RTI
        ORA ($00,X)
        RLA (POKMSK,X)
        BRK
        KIL
        RTI
        BRK
        NOP POKMSK
        BRK
        SLO RTCLOK+2,X
        SLO $40
        BRK
        SLO $4051,X
        BRK
        ORA (RAMLO+1,X)
        BRK
        BIT $40
        NOP $00
        KIL
        NOP $00
        RLA ($40,X)
        BRK
        ORA ($40,X)
        BRK
        ORA ($50,X)
        BRK
        ORA (RAMLO+1,X)
        BRK
        AND ($40,X)
        BRK
        ORA ($50,X)
        BRK
        SLO (POKMSK,X)
        BRK
        JSR $4001
        BRK
        KIL
        BPL $170D
        ORA ($00),Y
        AND ($01,X)
        BRK
        NOP $44
        BPL $1712
        AND ($01,X)
        BRK
        NOP POKMSK
        BRK
        KIL
        ORA $00
        RLA RAMLO
        BRK
        RLA RAMLO
        BRK
        RLA RTCLOK+2
        BRK
        RLA POKMSK
        BRK
        RLA POKMSK
        BRK
        RLA POKMSK
        BRK
        ISB $2C00,X
        SLO ($FF,X)
        SLO ($FF,X)
        SLO ($FF,X)
        SLO (FLPTR,X)
        SLO (FLPTR,X)
        SLO ($FF,X)
        BRK
        KIL
        SLO $0FFC
        BEQ $1746
        ISB $0100,X
        ISB FLPTR,X
        KIL
        ISB $3FF0,X
        CPY #$3F
        CPY #$0F
        NOP $0700,X
        SLO $0100
        SLO $0F03
        BRK
        ORA (APPMHI+1,X)
        SLO $0F0F
        SLO DDEVIC
        NOP $0100,X
        NOP $0F3C,X
        SLO ($C3,X)
        DCP (APPMHI+1,X)
        BRK
        KIL
        SLO $0100
        BEQ $1764
        BEQ $1766
        NOP DOSINI,X
        SLO APPMHI+1
        BRK
        ORA (APPMHI+1,X)
        SLO (APPMHI+1,X)
        BRK
        ORA (APPMHI+1,X)
        SLO $0F0F
        SLO DDEVIC
        NOP $0100,X
        NOP $0F3C,X
        SLO ($C3,X)
        DCP (APPMHI+1,X)
        BRK
        KIL
        SLO $0100
        BEQ $178A
        BEQ $178C
        NOP DOSINI,X
        SLO APPMHI+1
        BRK
        ORA (APPMHI+1,X)
        BRK
        ORA (APPMHI+1,X)
        BRK
        ORA (APPMHI+1,X)
        SLO $0F0F
        SLO DDEVIC
        NOP $0100,X
        NOP $0F3C,X
        SLO ($C3,X)
        DCP (APPMHI+1,X)
        BRK
        KIL
        SLO $0100
        BEQ $17B1
        BEQ $17B3
        NOP $0800,X
        SLO $0100
        SLO $0100
        SLO $0100
        SLO $0F0F
        SLO APPMHI+1
        SLO ($3C,X)
        BRK
        ORA ($3C,X)
        NOP CASFLG,X
        DCP ($C3,X)
        SLO VDSLST
        SLO $0100
        BEQ $17D7
        BEQ $17D9
        NOP $0800,X
        SLO $0100
        SLO $0100
        SLO $0100
        SLO $0F0F
        SLO APPMHI+1
        SLO ($3C,X)
        BRK
        ORA ($3C,X)
        NOP CASFLG,X
        DCP ($C3,X)
        SLO VDSLST
        SLO $0100
        BEQ $17FD
        BEQ $17FF
        NOP $0800,X
        SLO $0FF0
        BRK
        ORA (APPMHI+1,X)
        BRK
        ORA (APPMHI+1,X)
        SLO $FF0F
        SLO $00F0
        KIL
        RLA $3FC0,X
        BEQ $1836
        SLO ($C3,X)
        DCP (APPMHI+1,X)
        BRK
        KIL
        SLO $0100
        ISB $FFF0,X
        CPY #$3C
        BRK
        PHP
        SLO $0FF0
        NOP APPMHI+1,X
        ORA (APPMHI+1,X)
        ISB $FC0F,X
        SLO $00F0
        KIL
        RLA $3FC0,X
        BEQ $185A
        SLO ($C3,X)
        DCP (APPMHI+1,X)
        BRK
        KIL
        SLO $0100
        ISB $FFF0,X
        CPY #$3C
        BRK
        PHP
        SLO $0100
        SLO $0FFF
        BRK
        ORA (APPMHI+1,X)
        ISB APPMHI+1,X
        ORA (APPMHI+1,X)
        BRK
        SLO ($3C,X)
        BRK
        ORA ($3C,X)
        BEQ $1880
        SLO ($C3,X)
        DCP (APPMHI+1,X)
        BRK
        KIL
        SLO $0100
        BEQ $186C
        ISB ($C0),Y
        NOP $0800,X
        SLO VDSLST
        SLO APPMHI+1
        ORA (APPMHI+1,X)
        SLO APPMHI+1
        ORA (APPMHI+1,X)
        BRK
        SLO ($3C,X)
        BRK
        ORA ($3C,X)
        BEQ $18A5
        SLO ($C3,X)
        DCP (APPMHI+1,X)
        BRK
        KIL
        SLO $0100
        BEQ $1891
        ISB ($C0),Y
        NOP $0800,X
        SLO VDSLST
        SLO APPMHI+1
        ORA (APPMHI+1,X)
        SLO APPMHI+1
        ORA (APPMHI+1,X)
        BRK
        SLO ($3C,X)
        BRK
        ORA ($3C,X)
        BEQ $18CA
        SLO ($C3,X)
        DCP (APPMHI+1,X)
        BRK
        KIL
        SLO $0100
        BEQ $18B6
        ISB ($C0),Y
        NOP $0800,X
        SLO VDSLST
        SLO APPMHI+1
        ORA (APPMHI+1,X)
        SLO APPMHI+1
        ORA (APPMHI+1,X)
        BRK
        SLO ($3C,X)
        BRK
        ORA ($3C,X)
        BMI $18EF
        SLO ($C3,X)
        DCP (APPMHI+1,X)
        BRK
        KIL
        SLO $0100
        BEQ $18DB
        BEQ $18AD
        NOP $003C,X
        SLO APPMHI+1
        BRK
        KIL
        SLO APPMHI+1
        ORA (APPMHI+1,X)
        SLO APPMHI+1
        ORA (APPMHI+1,X)
        BRK
        SLO ($3C,X)
        BRK
        ORA ($3C,X)
        NOP CASFLG,X
        DCP ($C3,X)
        SLO VDSLST
        SLO $0100
        BEQ $1901
        BEQ $1903
        NOP DOSINI,X
        SLO APPMHI+1
        BRK
        KIL
        SLO APPMHI+1
        ORA (APPMHI+1,X)
        SLO APPMHI+1
        ORA (APPMHI+1,X)
        BRK
        SLO ($3C,X)
        BRK
        ORA ($3C,X)
        NOP CASFLG,X
        DCP ($C3,X)
        SLO VDSLST
        SLO $0100
        BEQ $1927
        BEQ $1929
        NOP DOSINI,X
        SLO APPMHI+1
        BRK
        KIL
        SLO APPMHI+1
        ORA (APPMHI+1,X)
        SLO APPMHI+1
        ORA (APPMHI+1,X)
        BRK
        SLO ($3C,X)
        BRK
        ORA ($3C,X)
        NOP CASFLG,X
        DCP ($C3,X)
        SLO VDSLST
        SLO $0100
        BEQ $194D
        BEQ $194F
        NOP DOSINI,X
        SLO APPMHI+1
        BRK
        ORA (DOSINI,X)
        SLO APPMHI+1
        ORA (APPMHI+1,X)
        SLO APPMHI+1
        ORA (APPMHI+1,X)
        BRK
        SLO ($3C,X)
        BRK
        ORA ($3C,X)
        NOP CASFLG
        DCP ($C3,X)
        SLO VDSLST
        SLO $0100
        BEQ $1974
        BEQ $19B6
        NOP DOSINI,X
        SLO APPMHI+1
        BRK
        ORA (DOSINI,X)
        SLO APPMHI+1
        ORA (APPMHI+1,X)
        SLO APPMHI+1
        ORA (APPMHI+1,X)
        BRK
        SLO ($3C,X)
        BRK
        ORA ($3C,X)
        SLO CASFLG
        DCP ($C3,X)
        SLO VDSLST
        SLO $0100
        BEQ $199B
        BEQ $19E9
        NOP DOSINI,X
        SLO APPMHI+1
        ISB $FF0F,X
        SLO $0FFF
        SLO APPMHI+1
        ORA (APPMHI+1,X)
        ISB VDSLST,X
        NOP $0100,X
        NOP $0F0F,X
        ISB $C3C3,X
        SLO VDSLST
        SLO $0100
        BEQ $19C1
        BEQ $1A0F
        RLA FLPTR,X
        SLO CASINI+1
        ISB $FC0F,X
        SLO ($FF,X)
        SLO $0F0F
        BRK
        ORA (CASINI+1,X)
        ISB VDSLST,X
        NOP $0100,X
        NOP CASFLG,X
        ISB $C303,X
        SLO VDSLST
        SLO $0100
        BEQ $19E7
        BEQ $1A35
        SLO $00F0
        ISB $A100,X
        ASL
        LDY #$00
        NOP $A202,X
        LDX #$A2
        KIL
        LDX #$2A
        KIL
        ROL
        BRK
        ORA (ICHIDZ,X)
        PHP
        KIL
        ROL
        ROL
        ROL
        BRK
        ORA (WARMST,X)
        KIL
        LDX #$22
        LDX #$A2
        LDX #$08
        BRK
        ORA (ICAX1Z,X)
        ROL
        ROL
        ROL
        JSR $A222
        LDX #$A0
        JSR $A0A8
        BRK
        KIL
        KIL
        KIL
        KIL
        KIL
        KIL
        KIL
        JSR $0822
        BRK
        ORA (ICCOMZ,X)
        DEY
        ASL
        KIL
        KIL
        JSR $0100
        ASL
        KIL
        KIL
        KIL
        KIL
        KIL
        KIL
        DEY
        BRK
        ORA (ICHIDZ,X)
        KIL
        JSR $2008
        KIL
        KIL
        KIL
        BRK
        ORA (ICHIDZ,X)
        JSR $0088
        KIL
        KIL
        KIL
        KIL
        LDX #$A2
        LDX #$20
        ROL
        PHP
        BRK
        ORA (ICCOMZ,X)
        PHP
        KIL
        ROL
        ROL
        ROL
        BRK
        ORA (DOSVEC,X)
        LDX #$22
        KIL
        LDX #$02
        NOP #$A8
        BRK
        ORA (ICAX1Z,X)
        KIL
        PLP
        PHP
        KIL
        KIL
        LDX #$A2
        NOP #$20
        JSR $0088
        KIL
        KIL
        KIL
        KIL
        BRK
        ORA ($82,X)
        NOP #$20
        KIL
        PHP
        BRK
        ORA (ICCOMZ,X)
        DEY
        KIL
        KIL
        KIL
        KIL
        BRK
        ORA (WARMST,X)
        LDX #$22
        LDX #$22
        KIL
        KIL
        PLP
        BRK
        ORA (CASINI,X)
        KIL
        JSR $2208
        KIL
        KIL
        NOP #$00
        ORA (ICHIDZ,X)
        JSR $0088
        KIL
        KIL
        KIL
        KIL
        BRK
        ORA ($82,X)
        LDX #$22
        KIL
        PHP
        BRK
        ORA (ICHIDZ,X)
        PHP
        KIL
        KIL
        KIL
        KIL
        BRK
        ORA (WARMST,X)
        LDX #$20
        NOP #$22
        KIL
        KIL
        PLP
        BRK
        ORA (CASINI,X)
        KIL
        JSR $2208
        KIL
        KIL
        LDX #$00
        ORA (ICHIDZ,X)
        JSR $0088
        KIL
        KIL
        LDX #$A2
        BRK
        ORA ($82,X)
        KIL
        ROL
        KIL
        PHP
        BRK
        ORA (ICHIDZ,X)
        PHP
        ASL
        NOP #$2A
        ROL
        BRK
        ORA (WARMST,X)
        KIL
        LDY #$82
        KIL
        LDX #$A2
        PHP
        BRK
        ORA (ICAX1Z,X)
        ROL
        JSR $2A08
        LDX #$22
        KIL
        LDY #$2A
        JSR $00A0
        NOP $A00A
        BRK
        BRK
        BRK
        BVS $1B82
        BVS $1B62
        BPL $1AB6
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $4E0E
        BRK
        BCS $1B8D
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $0E0E
        ASL $410E
        BRK
        LAX $8300,Y
        PHA
        LDA $82
        PHA
        JSR $4BBA
        PLA
        STA $82
        PLA
        STA $83
        LDY #$00
        LDA ($84),Y
        BPL $1C06
        LDA $96
        CMP $88
        BEQ $1BF9
        JSR $4B77
        LDA #$00
        STA $84
        STA $85
        LDY #$00
