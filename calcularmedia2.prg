* PROGRAMA PARA CALCULAR A MÉDIA DE CINCO NÚMEROS 
* USANDO UMA FUNÇÃO DE INTERFACE COM USUÁRIO

LPARAMETERS lnNota1, lnNota2, lnNota3, lnNota4, lnNota5
LOCAL lnMedia as Number

lnMedia = (lnNota1 + lnNota2 + lnNota3 + lnNota4 + lnNota5) / 5

lnMedia = ROUND(lnMedia, 1)

return(MESSAGEBOX(lnMedia, 0+48, 'A Sua Média foi: ', 5000))
