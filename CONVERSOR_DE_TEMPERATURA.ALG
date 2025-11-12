algoritmo "Conversor_de_Temperatura_Melhorado"
// Autor: Ricardo Fiorini Cuato
// Data: 12/11/2025
// Descrição: Conversor de temperatura com lógica de normalização.

var
   temp_entrada, temp_saida, temp_em_celsius: real
   unidade_entrada, unidade_saida: inteiro
   continuar: caractere

// --- Funções de Conversão Essenciais ---
// (Reduzimos de 6 para 4, pois F->K e K->F são compostas)

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

funcao kelvin_para_celsius(k: real): real
inicio
   retorne k - 273.15
fimfuncao

// --- Funções Auxiliares para UX ---

// Procedimento para não repetir o menu
procedimento exibir_menu_unidades()
inicio
   escreval("1 - Celsius")
   escreval("2 - Fahrenheit")
   escreval("3 - Kelvin")
fimprocedimento

// Função para obter o símbolo da unidade (ex: "°C")
funcao obter_simbolo_unidade(unidade: inteiro): caractere
inicio
   escolha unidade
      caso 1: retorne "°C"
      caso 2: retorne "°F"
      caso 3: retorne "K"
      caso contrario: retorne " (Unidade Inválida)"
   fimescolha
fimfuncao

// --- Bloco Principal do Programa ---
inicio
   // Loop principal
   repita
      limpatela()
      escreval("--- Conversor de Temperatura ---")
      escreval("--------------------------------")

      // --- Validação da Unidade de ENTRADA ---
      repita
         escreval("Escolha a unidade de ENTRADA:")
         exibir_menu_unidades()
         leia(unidade_entrada)
         se (unidade_entrada < 1) ou (unidade_entrada > 3) entao
            escreval("Opção inválida! Digite 1, 2 ou 3.")
         fimse
      ate (unidade_entrada >= 1) e (unidade_entrada <= 3)

      escreval
      escreval("Digite o valor da temperatura a ser convertida:")
      leia(temp_entrada)
      escreval

      // --- Validação da Unidade de SAÍDA ---
      repita
         escreval("Escolha a unidade de SAÍDA:")
         exibir_menu_unidades()
         leia(unidade_saida)
         se (unidade_saida < 1) ou (unidade_saida > 3) entao
            escreval("Opção inválida! Digite 1, 2 ou 3.")
         fimse
      ate (unidade_saida >= 1) e (unidade_saida <= 3)

      // --- Processamento (Etapa 1: Normalizar para Celsius) ---
      // Converte qualquer entrada para Celsius primeiro.
      escolha unidade_entrada
         caso 1: // Entrada já é Celsius
            temp_em_celsius := temp_entrada
            
         caso 2: // Entrada é Fahrenheit
            temp_em_celsius := fahrenheit_para_celsius(temp_entrada)
            
         caso 3: // Entrada é Kelvin
            temp_em_celsius := kelvin_para_celsius(temp_entrada)
      fimescolha

      // --- Processamento (Etapa 2: Converter de Celsius para a Saída) ---
      // Converte de Celsius para a unidade de saída desejada.
      escolha unidade_saida
         caso 1: // Saída é Celsius
            temp_saida := temp_em_celsius
            
         caso 2: // Saída é Fahrenheit
            temp_saida := celsius_para_fahrenheit(temp_em_celsius)
            
         caso 3: // Saída é Kelvin
            temp_saida := celsius_para_kelvin(temp_em_celsius)
      fimescolha

      // --- Exibição do Resultado ---
      // O formato ":0:2" arredonda o resultado para 2 casas decimais
      // (Pode variar ligeiramente dependendo do interpretador de Portugol)
      escreval("--------------------------------")
      escreval("Resultado da Conversão:")
      escreval(temp_entrada:0:2, obter_simbolo_unidade(unidade_entrada), " equivale a ", temp_saida:0:2, obter_simbolo_unidade(unidade_saida))
      escreval("--------------------------------")
      escreval

      // Pergunta se o usuário quer continuar
      escreval("Deseja realizar outra conversão? (S/N)")
      leia(continuar)

   ate (maiusc(continuar) = "N")

   limpatela()
   escreval("Obrigado por usar o conversor. Fim do programa.")

fimalgoritmo
