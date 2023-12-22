LOCAL ldData, lnDias, lnMeses

* Solicitar a data inicial
ldData = DATE()

* Solicitar o número de dias ou meses para avançar
lnDias = VAL(INPUTBOX("Digite o número de dias para avançar:", "Avançar Dias", "0"))
lnMeses = VAL(INPUTBOX("Digite o número de meses para avançar:", "Avançar Meses", "0"))

* Adicionar dias à data
ldData = ldData + lnDias

* Adicionar meses à data
ldData = CTOT(MONTH(ldData) + lnMeses + "/" + DAY(ldData) + "/" + YEAR(ldData))

* Exibir a data resultante
MESSAGEBOX("Data Resultante: " + DTOC(ldData), "Resultado")