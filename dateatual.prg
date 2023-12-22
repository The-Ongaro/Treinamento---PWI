** PEGA A DATA E O VALOR(QUANTIDADE DE MESES QUE DESEJA SOMA NA DATA)
LPARAMETERS ldData, lnValor

** DECLARA��O DE VAR
LOCAL lnAno, lnMes, lnDia as Number
LOCAL ldDtResul as Date

** SEPARANDO A DATA
lnAno = YEAR(ldData)
lnMes = MONTH(ldData)
lnDia = DAY(ldData)

** SOMANDO O VALOR ATRIBUIDO NO M�S
lnMes = lnMes + lnValor

** AJUSTA O ANO COM BASE NO VALOR DO M�S
lnAno = lnAno + INT((lnMes - 1) / 12)
** AJUSTA O M�S PARA CASO ELE SEJA MAIOR QUE 12
lnMes = MOD(lnMes - 1, 12) + 1

ldDtResul = DATE(lnAno, lnMes, lnDia)

RETURN (ldDtResul)