* PROGRAMA QUE RECEBE UMA DATA E RETORNA A SEGUNDA QUARTA-FEIRA DO MES SEGUINTE

** PEGA A DATA INFORMADA
LPARAMETERS ldData

** DECLARACAO DE VAR
LOCAL ldAno, ldMes, ldDia, ldsegQua as Date

** EXTRAI ANO, MES E DIA DA DATA INFORMADA
ldAno = YEAR(ldData)
ldMes = MONTH(ldData)
ldDia = DAY(ldData)

ldMes = IIF(ldMes = 12, 1, ldMes + 1)
ldAno = IIF(ldMes = 1, ldAno + 1, ldAno)

** PERCORRE PELOS DIAS DA SEMANA DE DOM A SAB
FOR ldDia = 1 TO 7
	** SE O DIA FOR IGUAL A QUATRO QUE CORRESPONDE A QUARTA-FEIRA
	IF DOW(DATE(ldAno, ldMes, ldDia)) = 4
		** ELE IR� SOAMAR MAIS SETE PARA ENCONTRAR A PR�XIMA QUARTA-FEIRA
		ldsegQua = DATE(ldAno, ldMes, ldDia + 7)
		EXIT 
	ENDIF
ENDFOR 	

** RETORNO DA DATA
RETURN(ldsegQua)

