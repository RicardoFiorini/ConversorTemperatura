algoritmo "Conversor_de_Temperatura"
var
    temp_entrada, temp_saida: real
    unidade_entrada, unidade_saida: inteiro

funcao celsius_para_fahrenheit(c: real): real
inicio
    retorne (c * 9 / 5) + 32
fimfuncao

funcao celsius_para_kelvin(c: real): real
inicio
    retorne c + 273.15
fimfuncao

funcao fahrenheit_para_celsius(f: real): real
inicio
    retorne (f - 32) * 5 / 9
fimfuncao

funcao fahrenheit_para_kelvin(f: real): real
inicio
    retorne (f - 32) * 5 / 9 + 273.15
fimfuncao

funcao kelvin_para_celsius(k: real): real
inicio
    retorne k - 273.15
fimfuncao

funcao kelvin_para_fahrenheit(k: real): real
inicio
    retorne (k - 273.15) * 9 / 5 + 32
fimfuncao

inicio
    // Menu para selecionar a unidade de entrada
    escreval("Conversor de Temperatura")
    escreval("Escolha a unidade de entrada:")
    escreval("1 - Celsius")
    escreval("2 - Fahrenheit")
    escreval("3 - Kelvin")
    leia(unidade_entrada)

    escreval("Digite o valor da temperatura: ")
    leia(temp_entrada)

    // Menu para selecionar a unidade de saída
    escreval("Escolha a unidade de saída:")
    escreval("1 - Celsius")
    escreval("2 - Fahrenheit")
    escreval("3 - Kelvin")
    leia(unidade_saida)

    // Conversões
    se unidade_entrada = 1 entao // Celsius
        se unidade_saida = 1 entao
            temp_saida := temp_entrada
        senao
            se unidade_saida = 2 entao
                temp_saida := celsius_para_fahrenheit(temp_entrada)
            senao
                temp_saida := celsius_para_kelvin(temp_entrada)
            fimse
        fimse
    senao
        se unidade_entrada = 2 entao // Fahrenheit
            se unidade_saida = 1 entao
                temp_saida := fahrenheit_para_celsius(temp_entrada)
            senao
                se unidade_saida = 2 entao
                    temp_saida := temp_entrada
                senao
                    temp_saida := fahrenheit_para_kelvin(temp_entrada)
                fimse
            fimse
        senao // Kelvin
            se unidade_saida = 1 entao
                temp_saida := kelvin_para_celsius(temp_entrada)
            senao
                se unidade_saida = 2 entao
                    temp_saida := kelvin_para_fahrenheit(temp_entrada)
                senao
                    temp_saida := temp_entrada
                fimse
            fimse
        fimse
    fimse

    // Exibe o resultado
    escreval("Temperatura convertida: ", temp_saida)
fimalgoritmo
