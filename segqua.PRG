* PROGRAMA QUE IR� RETORNAR A SEGUNDA QUARTA-FEIRA DO PR�XIMO MES

** RECEBE A DATA
LPARAMETERS ldDate

** DECLARA��O DE VAR
LOCAL ldAtual as Date
LOCAL lnLoop as Number

** PEGA O �LTIMO DIA DO M�S ANTERIOR
ldAtual = GOMONTH(DATE() - DAY(DATE()) + 1, 1)

FOR lnLoop = 1 TO 31
	ldDate = ldAtual + lnLoop
	* SE O DIA DA SEMANA FOR QUARTA (4 = QUARTA)
	IF DOW(ldDate) = 4
		* SOMA MAIS 7 DIAS PARA PEGAR A PR�XIMA QUARTA
		ldDate = ldDate + 7
		EXIT
	ENDIF
ENDFOR

** RETORNO DA PR�XIMA QUARTA EM FORMATO DE DATA
RETURN(ldDate)
