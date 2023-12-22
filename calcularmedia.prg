* programa que irá calcular a média

LPARAMETERS lnNota1, lnNota2

LOCAL lnMedia as Number

lnMedia = (lnNota1 + lnNota2) / 2

lnMedia = ROUND(lnMedia, 1)

RETURN(lnMedia)

