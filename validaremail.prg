* Programa que ir� validar se o email esta no formato correto
** condi��es - 1� veririfiacar se n�o h� nenhum espa�o, 2� verificar se tem um '@' e 3� verificar se tem um '.'

LPARAMETERS lcEmail

lcEmail = ALLTRIM(lcEmail)

LOCAL llEOK as Logical
llEOK = .T.

** VERIFICA SE H� ALGUM ESPA�O NO EMAIL
* OCCURS VERIFICA QUANTAS STRINGS IGUAIS EXITEM DENTRO DE OUTRA STRING
IF OCCURS(' ', lcEmail) > 0
	return(.F.)
ENDIF 

** VERIFICA SE H� UM @ NO COME�O DO EMAIL
IF LEFT(lcEmail, 1) $ '@./'
	return(.F.)
ENDIF

** VERIFICA SE H� UM PONTO NO FINAL DO EMAIL
IF RIGHT(lcEmail, 1) $ '@./'
	RETURN(.F.)
ENDIF

** STREXTRACT EXTRAI UMA STRING DE DENTRO DA OUTRA
lcSufixo = STREXTRACT(lcEmail, '@', '')
IF OCCURS('.', lcSufixo) < 1
	RETURN (.F.)
ENDIF 

** VERIFICA SE H� 2 .. NO EMAIL
IF OCCURS('..', lcEmail) <> 0
	RETURN(.F.)
ENDIF 

RETURN(llEOk)