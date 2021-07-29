programa
{
//CODIGO INICIAL - ESTRUTURA BASICA 	29/07 às 18:15
	funcao inicio()
	{
		/*
		 * Fazer uma loja virtual
		 * Precisa de NOME-SLOGAN-PRODUTOS
		 * 4 Vetores - CODIGO (G01yy) - x = Grupo y = Numero do Produto
		 * 		   - PRODUTO - Grupo Decide
		 * 		   - VALOR - Grupo Decide
		 * 		   - ESTOQUE - 10 de cada produto para todos os grupos (10 produtos, 100 produtos cada grupo)
		 * 
		 */
	
	cadeia PRODUTO[10]
	cadeia CODIGO[10]
	real VALOR [10]
	inteiro ESTOQUE [10]
	cadeia compra
	caracter sn = 'N'
	inteiro quantidade
	
	para(inteiro x=0;x<10;x++){
		CODIGO[x]=("G1"+ (x +1))
	}
	para(inteiro x=0;x<10;x++){
		escreva(CODIGO[x],"\n")
	}
	
	PRODUTO[0]= "XXX"
	PRODUTO[1]= "XXX"
	PRODUTO[2]= "XXX"
	PRODUTO[3]= "XXX"
	PRODUTO[4]= "XXX"
	PRODUTO[5]= "XXX"
	PRODUTO[6]= "XXX"
	PRODUTO[7]= "XXX"
	PRODUTO[8]= "XXX"
	PRODUTO[9]= "XXX"
	
	PRODUTO[0] = "CAMISETA BEGE"
	PRODUTO[1] = "CALÇA LARANJA"
	PRODUTO[2] = "BONÉ PRETO"
	PRODUTO[3] = "CASACO AZUL"
	PRODUTO[4] = "REGATA CINZA"
	PRODUTO[5] = "CAMISETA LARANJA"
	PRODUTO[6] = "CALÇA BEGE"
	PRODUTO[7] = "CASACO PRETO"
	PRODUTO[8] = "BONÉ LARANJA"
	PRODUTO[9] = "REGATA AZUL"

	VALOR[0] = 35.00
	VALOR[1] = 80.00
	VALOR[2] = 60.00
	VALOR[3] = 230.00
	VALOR[4] = 40.00
	VALOR[5] = 35.00
	VALOR[6] = 80.00
	VALOR[7] = 230.00
	VALOR[8] = 60.00
	VALOR[9] = 40.00
	
	
	para(inteiro x=0;x<10;x++){
		ESTOQUE[x]=(10)
	}

	escreva("*****LOJA GRUPO 1*****\n")
	escreva("**Slogan do Grupo 1**\n")
	escreva("***PRODUTOS A VENDA***\n")
	
	
	para(inteiro x=0;x<10;x++){
		escreva(CODIGO[x], "  -  ", PRODUTO[x],"   -   ",VALOR[x],"R$   -   ",ESTOQUE[x],"\n")
	}

	escreva("Coloque qual o produto deseja comprar: \n")
	leia(compra)
	para(inteiro x=0;x<10;x++){
		se(compra==PRODUTO[x]){
			escreva("CONFIRMA PRODUTO: ", CODIGO[x], "  -  ", PRODUTO[x],"   -   ",VALOR[x],"R$   -   ",ESTOQUE[x],"\n")
			escreva("CERTO??")
			leia(sn)
			se(sn=='s' ou sn=='S'){
				escreva("Qual a quantidade?")
				leia(quantidade)
				ESTOQUE[x]= ESTOQUE[x]-quantidade
			}escreva("SALDO RESTANTE ", PRODUTO[x],"   -   ",VALOR[x],"R$   -   ",ESTOQUE[x],"\n")
		}
	}
	
	
	
	
	
	
	
	
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2103; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */