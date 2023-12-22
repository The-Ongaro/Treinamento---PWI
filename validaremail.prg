* Programa que irá validar se o email esta no formato correto
** condições - 1º veririfiacar se não há nenhum espaço, 2º verificar se tem um '@' e 3º verificar se tem um '.'

LPARAMETERS lcEmail

lcEmail = ALLTRIM(lcEmail)

LOCAL llEOK as Logical
llEOK = .T.

** VERIFICA SE HÁ ALGUM ESPAÇO NO EMAIL
* OCCURS VERIFICA QUANTAS STRINGS IGUAIS EXITEM DENTRO DE OUTRA STRING
IF OCCURS(' ', lcEmail) > 0
	return(.F.)
ENDIF 

** VERIFICA SE HÁ UM @ NO COMEÇO DO EMAIL
IF LEFT(lcEmail, 1) $ '@./'
	return(.F.)
ENDIF

** VERIFICA SE HÁ UM PONTO NO FINAL DO EMAIL
IF RIGHT(lcEmail, 1) $ '@./'
	RETURN(.F.)
ENDIF

** STREXTRACT EXTRAI UMA STRING DE DENTRO DA OUTRA
lcSufixo = STREXTRACT(lcEmail, '@', '')
IF OCCURS('.', lcSufixo) < 1
	RETURN (.F.)
ENDIF 

** VERIFICA SE HÁ 2 .. NO EMAIL
IF OCCURS('..', lcEmail) <> 0
	RETURN(.F.)
ENDIF 

RETURN(llEOk)