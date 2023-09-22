programa
{
	funcao inicio()
	{
		inteiro numero, primo = 0, par = 0, dois = 0, aux = 0, qtdprimo = 0, opcao, maior = 0, media = 0, fatorial, rfatorial

		escreva("============================================")
		escreva("||   Atividade Práticas Supervisionadas   ||")
		escreva("============================================\n")

		escreva("Bem-vindo ao Analisador de Números!\n")

		escreva("A) Verifica se o número é primo ou não primo;")
		escreva("B) Determinar se o número é par ou ímpar;")
		escreva("C) Calcula o seu fatorial;\n")

		escreva("E também serão fornecidas as seguintes informações:\n")

		escreva("A) Quantas vezes o número 2 foi informado;")
		escreva("B) Qual o maior número informado;")
		escreva("C) Qual a média dos números informados;")
		escreva("D) Quantos números primos foram informados\n")

		leia(opcao)

		faca
		{
			escreva("============================================")
			escreva("||                  Menu                  ||")
			escreva("============================================\n")
			escreva("1. Informar um número")
			escreva("0. Sair\n")
			escreva("Escolha uma opção: ")
			leia(opcao)

      escolha(opcao) {
        caso 1:
				faca
				{
					primo = 0
					fatorial = 0
					par = 0
					escreva("Informe um número: ")
					leia(numero)
					fatorial = numero
					rfatorial = fatorial

					se (numero == 2)
					{
						dois = dois + 1
					}
					se (maior < numero)
					{
						maior = numero
					}
					se (numero > 0)
					{
						aux = aux + 1
						media = media + numero
					}

					// VERIFICAÇÃO SE O NÚMERO É NEGATIVO
					se (numero <= 0)
					{
						faca
						{
							escreva("Informe um número maior que zero: ")
							leia(numero)
						} enquanto (numero <= 0)
					}

					// VERIFICAÇÃO SE O NÚMERO É PRIMO OU NÃO PRIMO / NÚMERO É PAR OU ÍMPAR
					para (inteiro i = 1; i <= numero; i++)
					{
						se (numero % i == 0)
						{
							primo = primo + 1
						}
					}

					// VERIFICAÇÃO SE O NÚMERO É PAR OU ÍMPAR
					se (numero % 2 == 0)
					{
						par = par + 1
					}

					// CÁLCULO DO FATORIAL DO NÚMERO
					enquanto (fatorial > 1)
					{
						rfatorial = rfatorial * (fatorial - 1)
						fatorial = fatorial - 1
					}

					escreva("============================================")
					escreva("||           Resultado Parcial            ||")
					escreva("============================================\n")

					se (primo == 2)
					{
						qtdprimo= qtdprimo + 1
						se (par == 1)
						{
							escreva("Número é primo e par, seu fatorial é: ", rfatorial)
						}
						senao
						{
							escreva("Número é primo e ímpar, seu fatorial é: ", rfatorial)
						}
					}
					senao
					{
						se (par == 1)
						{
							escreva("Número não é primo e par,  fatorial é: ", rfatorial)
						}
						senao
						{
							escreva("Número não é primo e ímpar, seu fatorial é: ", rfatorial)
						}
					}
				} enquanto (numero < 15)
				pare
			caso 0:
				escreva("\nEncerrando o programa. Obrigado!")
				pare
			caso contrario:
				escreva("Opção inválida. Por favor, escolha uma opção válida.")
      }
		} enquanto (opcao != 0)

		// CÁLCULO DA MÉDIA DOS NÚMEROS
		se (aux > 0)
		{
			media = media / aux
		}

		escreva("============================================")
		escreva("||           Resultado Final              ||")
		escreva("============================================\n")
		escreva("Número dois foi informado: ", dois, " vezes;")
		escreva("O maior número informado foi: ", maior, ";")
		escreva("A média dos números informados foi: ", media)
		escreva("A quantidade de números primos foi: ", qtdprimo)
	}
}
