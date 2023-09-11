package br.com.unifebe.aps;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {

		Scanner input = new Scanner(System.in);

		byte numero, primo = 0, par = 0, dois = 0, aux = 0, qtdprimo = 0;
		int maior = 0, media = 0;
		double fatorial, rfatorial;

		System.out.println("============================================");
		System.out.println("||   Atividade Práticas Supervisionadas   ||");
		System.out.println("============================================\n");

		System.out.println("Bem-vindo ao Analisador de Números!\n");

		System.out.println("A) Verifica se o número é primo ou não primo;");
		System.out.println("B) Determinar se o número é par ou ímpar;");
		System.out.println("C) Calcula o seu fatorial;\n");
		
		System.out.println("E também serão fornecidas as seguintes informações:\n");
		
		System.out.println("A) Quantas vezes o número 2 foi informado;");
		System.out.println("B) Qual o maior número informado;");
		System.out.println("C) Qual a média dos números informados;");
		System.out.println("D) Quantos números primos foram informados\n");

		int escolha;

		do {
			System.out.println("============================================");
			System.out.println("||                  Menu                  ||");
			System.out.println("============================================\n");
			System.out.println("1. Informar um número");
			System.out.println("0. Sair\n");
			System.out.print("Escolha uma opção: ");
			escolha = input.nextInt();

			switch (escolha) {
			case 1:
				do {
					primo = 0;
					fatorial = 0;
					par = 0;
					System.out.print("Informe um número: ");
					numero = input.nextByte();
					fatorial = numero;
					rfatorial = fatorial;

					if (numero == 2) {
						dois++;
					}
					if (maior < numero) {
						maior = numero;
					}
					if (numero > 0) {
						aux++;
						media += numero;
					}

					// VERIFICAÇÃO SE O NÚMERO É NEGATIVO
					if (numero <= 0) {
						do {
							System.out.print("Informe um número maior que zero: ");
							numero = input.nextByte();
						} while (numero <= 0);
					}
					// VERIFICAÇÃO SE O NÚMERO É PRIMO OU NÃO PRIMO / NÚMERO É PAR OU ÍMPAR
					for (int i = 1; i <= numero; i++) {
						if (numero % i == 0) {
							primo++;
						}
					}
					// VERIFICAÇÃO SE O NÚMERO É PAR OU ÍMPAR
					if (numero % 2 == 0) {
						par++;
					}
					// CÁLCULO DO FATORIAL DO NÚMERO
					while (fatorial > 1) {
						rfatorial = rfatorial * (fatorial - 1);
						fatorial--;
					}
					
					System.out.println("============================================");
					System.out.println("||           Resultado Parcial            ||");
					System.out.println("============================================\n");
					if (primo == 2) {
						qtdprimo++;
						if (par == 1) {
							System.out.println("Número é primo e par, seu fatorial é: " + rfatorial);
						} else {
							System.out.println("Número é primo e ímpar, seu fatorial é: " + rfatorial);
						}
					} else {
						if (par == 1) {
							System.out.println("Número não é primo e par,  fatorial é: " + rfatorial);
						} else {
							System.out.println("Número não é primo e ímpar, seu fatorial é: " + rfatorial);
						}
					}
					
				} while (numero < 15);
				break;
			case 0:
				System.out.println("\nEncerrando o programa. Obrigado!");
				break;
			default:
				System.out.println("Opção inválida. Por favor, escolha uma opção válida.");
				break;
			}
		} while (escolha != 0);
		
		// CÁLCULO DA MÉDIA DOS NÚMEROS
		media = media / aux;

		System.out.println("============================================");
		System.out.println("||           Resultado Final              ||");
		System.out.println("============================================\n");
		System.out.println("Número dois foi informado: " + dois + " vezes;");
		System.out.println("O maior número informado foi: " + maior + ";");
		System.out.println("A média dos números informados foi: " + media);
		System.out.println("A quantidade de números primos foi: " + qtdprimo);

		input.close();
	}
}
