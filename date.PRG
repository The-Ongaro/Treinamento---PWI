LOCAL ldData, lnDias, lnMeses

* Solicitar a data inicial
ldData = DATE()

* Solicitar o n�mero de dias ou meses para avan�ar
lnDias = VAL(INPUTBOX("Digite o n�mero de dias para avan�ar:", "Avan�ar Dias", "0"))
lnMeses = VAL(INPUTBOX("Digite o n�mero de meses para avan�ar:", "Avan�ar Meses", "0"))

* Adicionar dias � data
ldData = ldData + lnDias

* Adicionar meses � data
ldData = CTOT(MONTH(ldData) + lnMeses + "/" + DAY(ldData) + "/" + YEAR(ldData))

* Exibir a data resultante
MESSAGEBOX("Data Resultante: " + DTOC(ldData), "Resultado")