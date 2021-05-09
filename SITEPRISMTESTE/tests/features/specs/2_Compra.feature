#language: pt

@compra
Funcionalidade: Realizar uma Compra

Cenario: Pesquisar "Faded Short Sleeve"
Dado Acessar pagina Inicial
Quando Pesquisar "Faded Short Sleeve"
E Adicionar no Carrinho
Entao Finalizar a Compra