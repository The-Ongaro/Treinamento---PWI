* PROGRAMA PARA CALCULAR A M�DIA DE CINCO N�MEROS 
* USANDO UMA FUN��O DE INTERFACE COM USU�RIO

LPARAMETERS lnNota1, lnNota2, lnNota3, lnNota4, lnNota5
LOCAL lnMedia as Number

lnMedia = (lnNota1 + lnNota2 + lnNota3 + lnNota4 + lnNota5) / 5

lnMedia = ROUND(lnMedia, 1)

return(MESSAGEBOX(lnMedia, 0+48, 'A Sua M�dia foi: ', 5000))
