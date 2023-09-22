programa
{
	funcao inicio()
	{
		inteiro numero, primo = 0, par = 0, dois = 0, aux = 0, qtdprimo = 0, opcao, maior = 0, media = 0, fatorial, rfatorial

		escreva("============================================")
		escreva("||   Atividade Pr�ticas Supervisionadas   ||")
		escreva("============================================\n")

		escreva("Bem-vindo ao Analisador de N�meros!\n")

		escreva("A) Verifica se o n�mero � primo ou n�o primo;")
		escreva("B) Determinar se o n�mero � par ou �mpar;")
		escreva("C) Calcula o seu fatorial;\n")

		escreva("E tamb�m ser�o fornecidas as seguintes informa��es:\n")

		escreva("A) Quantas vezes o n�mero 2 foi informado;")
		escreva("B) Qual o maior n�mero informado;")
		escreva("C) Qual a m�dia dos n�meros informados;")
		escreva("D) Quantos n�meros primos foram informados\n")

		leia(opcao)

		faca
		{
			escreva("============================================")
			escreva("||                  Menu                  ||")
			escreva("============================================\n")
			escreva("1. Informar um n�mero")
			escreva("0. Sair\n")
			escreva("Escolha uma op��o: ")
			leia(opcao)

      escolha(opcao) {
        caso 1:
				faca
				{
					primo = 0
					fatorial = 0
					par = 0
					escreva("Informe um n�mero: ")
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

					// VERIFICA��O SE O N�MERO � NEGATIVO
					se (numero <= 0)
					{
						faca
						{
							escreva("Informe um n�mero maior que zero: ")
							leia(numero)
						} enquanto (numero <= 0)
					}

					// VERIFICA��O SE O N�MERO � PRIMO OU N�O PRIMO / N�MERO � PAR OU �MPAR
					para (inteiro i = 1; i <= numero; i++)
					{
						se (numero % i == 0)
						{
							primo = primo + 1
						}
					}

					// VERIFICA��O SE O N�MERO � PAR OU �MPAR
					se (numero % 2 == 0)
					{
						par = par + 1
					}

					// C�LCULO DO FATORIAL DO N�MERO
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
							escreva("N�mero � primo e par, seu fatorial �: ", rfatorial)
						}
						senao
						{
							escreva("N�mero � primo e �mpar, seu fatorial �: ", rfatorial)
						}
					}
					senao
					{
						se (par == 1)
						{
							escreva("N�mero n�o � primo e par,  fatorial �: ", rfatorial)
						}
						senao
						{
							escreva("N�mero n�o � primo e �mpar, seu fatorial �: ", rfatorial)
						}
					}
				} enquanto (numero < 15)
				pare
			caso 0:
				escreva("\nEncerrando o programa. Obrigado!")
				pare
			caso contrario:
				escreva("Op��o inv�lida. Por favor, escolha uma op��o v�lida.")
      }
		} enquanto (opcao != 0)

		// C�LCULO DA M�DIA DOS N�MEROS
		se (aux > 0)
		{
			media = media / aux
		}

		escreva("============================================")
		escreva("||           Resultado Final              ||")
		escreva("============================================\n")
		escreva("N�mero dois foi informado: ", dois, " vezes;")
		escreva("O maior n�mero informado foi: ", maior, ";")
		escreva("A m�dia dos n�meros informados foi: ", media)
		escreva("A quantidade de n�meros primos foi: ", qtdprimo)
	}
}
