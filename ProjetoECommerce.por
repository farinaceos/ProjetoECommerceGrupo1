programa
{
//CODIGO INICIAL - ESTRUTURA BASICA 	29/07 às 18:15
//CODIGO REFORMULADO - ESTRUTURA DE CARRINHO, TOTALIZADOR DE COMPRA, TOTALIZADOR DE VALORES, RECURSIVIDADE DA LOJA   30/07  às  12:50

	funcao inicio()
	{
		/*
		 * Fazer uma loja virtual
		 * Precisa de NOME-SLOGAN-PRODUTOS
		 * 4 Vetores - CODIGO (G01yy) - x = Grupo y = Numero do Produto
		 * 		   - PRODUTO - Grupo Decide
		 * 		   - VALOR - Grupo Decide
		 * 		   - ESTOQUE - 10 de cada produto para todos os grupos (10 produtos, 100 produtos cada grupo)
		 */
	
	cadeia PRODUTO[10]
	cadeia CODIGO[10]
	cadeia PRODUTOFINAL[10]
	real VALORFINAL[10]
	inteiro QTDEFINAL[10]
	real VALOR [10]
	inteiro ESTOQUE [10]
	cadeia compra
	caracter sn = 'S'
	inteiro quantidade
	real carrinho = 0
	inteiro qtdeCompra =0
	real valorFinal =0.0
	
	para(inteiro x=0;x<10;x++){
		CODIGO[x]=("g1"+ (x +1))
	}
	
	PRODUTO[0] = "DONNUT NUTELLA"
	PRODUTO[1] = "DONNUT NINHO"
	PRODUTO[2] = "DONNUT COCO"
	PRODUTO[3] = "DONNUT CHOCO"
	PRODUTO[4] = "DONNUT KIT KAT"
	PRODUTO[5] = "DONNUT CREME"
	PRODUTO[6] = "DONNUT CHURROS"
	PRODUTO[7] = "DONNUT GELEIA"
	PRODUTO[8] = "DONNUT MORANGO"
	PRODUTO[9] = "DONNUT FRUTAS"

	VALOR[0] = 12.00
	VALOR[1] = 15.00
	VALOR[2] = 16.00
	VALOR[3] = 13.00
	VALOR[4] = 12.00
	VALOR[5] = 13.00
	VALOR[6] = 10.00
	VALOR[7] = 10.00
	VALOR[8] = 12.00
	VALOR[9] = 11.00
	
	
	para(inteiro x=0;x<10;x++){
		ESTOQUE[x]=(10)
	}
faca{
		limpa()
		escreva("*******DONNUTIX*******\n\n")
		escreva("**Seu Donnut, Nosso mix**\n\n\n")
		escreva("COD\tSABORES DONNUT'S\tVALOR\t\tESTOQUE\n\n")
		
		
		para(inteiro x=0;x<10;x++){
			escreva(CODIGO[x], "\t", PRODUTO[x],"\t\tR$ ",VALOR[x],"\t\t",ESTOQUE[x],"\n")
		}
	
		escreva("\n        Quais Donnut's deseja comprar? \n")
		leia(compra)
		para(inteiro x=0;x<10;x++){
			se(compra==PRODUTO[x] ou compra == CODIGO[x]){
				escreva("\nCONFIRMA PRODUTO: \n", CODIGO[x], "\t", PRODUTO[x],"\t",VALOR[x],"R$ \t\t   ",ESTOQUE[x],"\n\n")
				escreva("CERTO?? [S ou N] \n")
				leia(sn)
				se(sn=='s' ou sn=='S'){
					escreva("\nQual a quantidade? \n")
					leia(quantidade)
					carrinho = quantidade*VALOR[x]
					escreva ("CARRINHO ATUAL: ", PRODUTO[x],"\t", VALOR[x], "\t PREÇO FINAL: R$",carrinho,"\n")
					escreva("\nCONFIRMA?? [S ou N]\n")
					leia(sn)
					se(sn=='s' ou sn=='S'){
						se(quantidade>ESTOQUE[x])
						{escreva("ESTOQUE INDISPONÍVEL!\n\n")pare
						} senao
					qtdeCompra+=quantidade
					valorFinal+=carrinho
					ESTOQUE[x]= ESTOQUE[x]-quantidade
					PRODUTOFINAL[x]=PRODUTO[x]
					se(PRODUTO[x]==PRODUTOFINAL[x]){
					VALORFINAL[x]+=carrinho
					QTDEFINAL[x]+=quantidade
					}
				}
			}escreva("\nSALDO RESTANTE: ", PRODUTO[x],"\t",ESTOQUE[x],"\n")
		}
			
	}
		
		escreva("\nSUA COMPRA DE ",qtdeCompra," DONNUTS, VALOR FINAL R$",valorFinal,"  \n")
		escreva("\nDESEJA CONTINUAR COMPRANDO?? [S ou N] \n")
		leia(sn)
		
}enquanto(sn=='s' ou sn =='S')
	
	limpa()
	
	escreva("*** CARRINHO FINAL*** \n\n")
	
	para(inteiro x=0;x<10;x++){
		se(PRODUTOFINAL[x]!= ""){
			escreva(QTDEFINAL[x], " ", PRODUTOFINAL[x],"\t\t R$",VALORFINAL[x],"\n")
		}
	}
	escreva("\nVALOR FINAL R$",valorFinal,"  \n")
	
	escreva("\n***OBRIGADO PELA COMPRA!***")
	
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2939; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */