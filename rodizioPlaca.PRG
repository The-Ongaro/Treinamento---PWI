* PROGRAMA QUE INFORMA SE SEU CARRO ESTÁ SUSPENSO NO RODIZIO A PARTIR ÚLTIMO NÚMERO DA SUA PLACA.

LPARAMETERS lcPlaca, ldData

IF TYPE('ldData') <> 'D'
		RETURN('Digite uma data válida')
ENDIF 

LOCAL llRodizio as logical
llRodizio = .F.

lcDigito = RIGHT(lcPlaca, 1)
lnDia = DOW(ldData)

DO CASE 
CASE lnDia = 2 AND lcDigito $ '12'
		llRodizio  = .T.
CASE lnDia = 3 AND lcDigito $ '34'
		llRodizio  = .T.
CASE lnDia = 4 AND lcDigito $ '56'
		llRodizio = .T.
CASE lnDia = 5 AND lcDigito $ '78'
		llRodizio = .T.
CASE lnDia = 6 AND lcDigito $ '90'
		llRodizio = .T.
ENDCASE 

RETURN (llRodizio)