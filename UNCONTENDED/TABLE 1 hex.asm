
; org $6800
; block 1	$6800
  defb $40,$41,$42,$43,$44,$45,$46,$47 ; $6800-$6807
  defb $40,$41,$42,$43,$44,$45,$46,$47 ; $6808-$680F
  defb $40,$41,$42,$43,$44,$45,$46,$47 ; $6810-$6817
  defb $40,$41,$42,$43,$44,$45,$46,$47 ; $6818-$681F
  defb $40,$41,$42,$43,$44,$45,$46,$47 ; $6820-$6827
  defb $40,$41,$42,$43,$44,$45,$46,$47 ; $6828-$682F
  defb $40,$41,$42,$43,$44,$45,$46,$47 ; $6830-$6837
  defb $40,$41,$42,$43,$44,$45,$46,$47 ; $6838-$683F
; block 2 $6840
  defb $48,$49,$4a,$4b,$4c,$4d,$4e,$4f ; $6840-$6847
  defb $48,$49,$4a,$4b,$4c,$4d,$4e,$4f ; $6848-$684F
  defb $48,$49,$4a,$4b,$4c,$4d,$4e,$4f ; $6850-$6857
  defb $48,$49,$4a,$4b,$4c,$4d,$4e,$4f ; $6858-$685F
  defb $48,$49,$4a,$4b,$4c,$4d,$4e,$4f ; $6860-$6867
  defb $48,$49,$4a,$4b,$4c,$4d,$4e,$4f ; $6868-$686F
  defb $48,$49,$4a,$4b,$4c,$4d,$4e,$4f ; $6870-$6877
  defb $48,$49,$4a,$4b,$4c,$4d,$4e,$4f ; $6878-$687F
; block 3 $6880
  defb $50,$51,$52,$53,$54,$55,$56,$57 ; $6880-$6887
  defb $50,$51,$52,$53,$54,$55,$56,$57 ; $6888-$688F
  defb $50,$51,$52,$53,$54,$55,$56,$57 ; $6880-$6897
  defb $50,$51,$52,$53,$54,$55,$56,$57 ; $6898-$689F
  defb $50,$51,$52,$53,$54,$55,$56,$57 ; $68A0-$68A7
  defb $50,$51,$52,$53,$54,$55,$56,$57 ; $68A8-$68AF
  defb $50,$51,$52,$53,$54,$55,$56,$57 ; $68B0-$68B7
  defb $50,$51,$52,$53,$54,$55,$56,$57 ; $68B8-$68BF
  
;  $68C0 - $68FF  empty hole 3F EMPTY BYTES
;block empty
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; $68C0-$68C7
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; $68C8-$68CF
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; $68D0-$68D7
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; $68D8-$68DF
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; $68E0-$68E7
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; $68E8-$68EF
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; $68F0-$68F7
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; $68F8-$68FF
  
; block 4 $6900
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; $6900-$6907
  defb $20,$20,$20,$20,$20,$20,$20,$20 ; $6908-$690F
  defb $40,$40,$40,$40,$40,$40,$40,$40 ; $6910-$6917
  defb $60,$60,$60,$60,$60,$60,$60,$60 ; $6918-$691F
  defb $80,$80,$80,$80,$80,$80,$80,$80 ; $6920-$6927
  defb $A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0 ; $6928-$692F
  defb $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0 ; $6930-$6937
  defb $E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0 ; $6938-$693F
; block 5 $6940
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; $6940-$6947
  defb $20,$20,$20,$20,$20,$20,$20,$20 ; $6948-$694F
  defb $40,$40,$40,$40,$40,$40,$40,$40 ; $6950-$6957
  defb $60,$60,$60,$60,$60,$60,$60,$60 ; $6958-$695F
  defb $80,$80,$80,$80,$80,$80,$80,$80 ; $6960-$6967
  defb $A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0 ; $6968-$696F
  defb $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0 ; $6970-$6977
  defb $E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0 ; $6978-$697F
; block 6 $6980
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; $6980-$6987
  defb $20,$20,$20,$20,$20,$20,$20,$20 ; $6988-$698F
  defb $40,$40,$40,$40,$40,$40,$40,$40 ; $6990-$6997
  defb $60,$60,$60,$60,$60,$60,$60,$60 ; $6998-$699F
  defb $80,$80,$80,$80,$80,$80,$80,$80 ; $69A0-$69A7
  defb $A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0 ; $69A8-$69AF
  defb $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0 ; $69B0-$69B7
  defb $E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0 ; $69B8-$69BF
; block 7 $69C0
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; $69C0-$69C7
  defb $20,$20,$20,$20,$20,$20,$20,$20 ; $69C8-$69CF
  defb $40,$40,$40,$40,$40,$40,$40,$40 ; $69D0-$69D7
  defb $60,$60,$60,$60,$60,$60,$60,$60 ; $69D8-$69DF
  defb $80,$80,$80,$80,$80,$80,$80,$80 ; $69E0-$69E7
  defb $A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0 ; $69E8-$69EF
  defb $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0 ; $69F0-$69F7
  defb $E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0 ; $69F8-$69FF
; block 8 $6A00
  defb $00,$00,$00,$00,$00,$00,$00,$00 ; $6A00-$6A07
  defb $01,$01,$01,$01,$01,$01,$01,$01 ; $6A08-$6A0F
  defb $02,$02,$02,$02,$02,$02,$02,$02 ; $6A10-$6A17
  defb $03,$03,$03,$03,$03,$03,$03,$03 ; $6A18-$6A1F
  defb $04,$04,$04,$04,$04,$04,$04,$04 ; $6A20-$6A27
  defb $05,$05,$05,$05,$05,$05,$05,$05 ; $6A28-$6A2F
  defb $06,$06,$06,$06,$06,$06,$06,$06 ; $6A30-$6A37
  defb $07,$07,$07,$07,$07,$07,$07,$07 ; $6A38-$6A3F
  defb $08,$08,$08,$08,$08,$08,$08,$08 ; $6A40-$6A47
  defb $09,$09,$09,$09,$09,$09,$09,$09 ; $6A48-$6A4F
  defb $0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A ; $6A50-$6A57
  defb $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B ; $6A58-$6A5F
  defb $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C ; $6A60-$6A67
  defb $0D,$0D,$0D,$0D,$0D,$0D,$0D,$0D ; $6A68-$6A6F
  defb $0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E ; $6A70-$6A77
  defb $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F ; $6A78-$6A7F
  defb $10,$10,$10,$10,$10,$10,$10,$10 ; $6A80-$6A87
  defb $11,$11,$11,$11,$11,$11,$11,$11 ; $6A88-$6A8F
  defb $12,$12,$12,$12,$12,$12,$12,$12 ; $6A90-$6A97
  defb $13,$13,$13,$13,$13,$13,$13,$13 ; $6A98-$6A9F
  defb $14,$14,$14,$14,$14,$14,$14,$14 ; $6AA0-$6AA7
  defb $15,$15,$15,$15,$15,$15,$15,$15 ; $6AA8-$6AAF
  defb $16,$16,$16,$16,$16,$16,$16,$16 ; $6AB0-$6AB7
  defb $17,$17,$17,$17,$17,$17,$17,$17 ; $6AB8-$6ABF
  defb $18,$18,$18,$18,$18,$18,$18,$18 ; $6AC0-$6AC7
  defb $19,$19,$19,$19,$19,$19,$19,$19 ; $6AC8-$6ACF
  defb $1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A ; $6AD0-$6AD7
  defb $1B,$1B,$1B,$1B,$1B,$1B,$1B,$1B ; $6AD8-$6ADF
  defb $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C ; $6AE0-$6AE7
  defb $1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D ; $6AE8-$6AEF
  defb $1E,$1E,$1E,$1E,$1E,$1E,$1E,$1E ; $6AF0-$6AF7
  defb $1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F ; $6AF8-$6AFF
;BLOCK END 6AFF
; block 9 $6B00-6BFF
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6B00-$6B07
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6B08-$6B0F
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6B10-$6B17
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6B18-$6B1F
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6B20-$6B27
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6B28-$6B2F
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6B30-$6B37
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6B38-$6B3F
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6B40-$6B47
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6B48-$6B4F
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6B50-$6B57
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6B58-$6B5F
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6B60-$6B67
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6B68-$6B6F
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6B70-$6B77
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6B78-$6B7F
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6B80-$6B87
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6B88-$6B8F
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6B90-$6B97
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6B98-$6B9F
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6BA0-$6BA7
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6BA8-$6BAF
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6BB0-$6BB7
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6BB8-$6BBF
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6BC0-$6BC7
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6BC8-$6BCF
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6BD0-$6BD7
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6BD8-$6BDF
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6BE0-$6BE7
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6BE8=$6BEF
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6BF0-$6BF7
  defb $80,$40,$20,$10,$08,$04,$02,$01 ; $6BF8-$6BFF
    
