# 🔥 Conversor de Temperatura em Portugol

Este é um projeto de console em Portugol que permite ao usuário converter valores de temperatura entre as três unidades mais comuns: **Celsius (°C)**, **Fahrenheit (°F)** e **Kelvin (K)**.

O foco deste algoritmo é demonstrar uma arquitetura de software limpa, utilizando funções, validação de entrada e uma lógica de **normalização** para simplificar o processo de conversão.

## ✨ Funcionalidades

* **Conversão Tripla:** Converte valores entre Celsius, Fahrenheit e Kelvin em qualquer direção (ex: F para K, C para F, K para C, etc.).
* **Loop de Execução:** O programa roda em um loop contínuo, permitindo ao usuário fazer várias conversões sem reiniciar.
* **Validação de Entrada:** O usuário não pode quebrar o programa digitando opções de menu inválidas (ex: '4' ou 'abc'). O programa solicitará uma opção válida.
* **Saída Formatada:** O resultado é exibido de forma clara e legível, mostrando tanto o valor original quanto o convertido, com suas respectivas unidades (ex: `100.00°C equivale a 212.00°F`).
* **Código Limpo:** Utiliza funções modulares e `procedimentos` para evitar repetição de código (princípio DRY - "Don't Repeat Yourself").

## ⚙️ A Lógica de Normalização

Em vez de criar uma função para cada uma das 9 combinações de conversão (incluindo C->C, F->F, etc.), este programa adota uma abordagem mais eficiente em duas etapas:

1.  **Normalização para Celsius:** Qualquer que seja a unidade de entrada (Fahrenheit ou Kelvin), ela é **primeiro** convertida para Celsius e armazenada em uma variável temporária (`temp_em_celsius`).
2.  **Conversão para a Saída:** O valor em Celsius é **então** convertido para a unidade de saída desejada (Fahrenheit ou Kelvin).

Este método `ENTRADA -> CELSIUS -> SAÍDA` reduz o número de funções de conversão de 6 para 4 e simplifica drasticamente a lógica principal, substituindo uma complexa árvore de `se/senao` aninhados por duas estruturas `escolha/caso` simples e lineares.

## 🚀 Como Executar

1.  **Ambiente:** Você precisará de um interpretador de Portugol, como o [VisualG](httpsa://visualg3.com.br/) ou o [Portugol Studio](https://portugol-studio.github.io/).
2.  **Download:** Copie o código do arquivo `Conversor_de_Temperatura_Melhorado.alg`.
3.  **Executar:** Abra o arquivo no seu interpretador e pressione `F9` (ou o botão "Executar").
4.  **Usar:** Siga as instruções no console para selecionar as unidades e inserir os valores.
