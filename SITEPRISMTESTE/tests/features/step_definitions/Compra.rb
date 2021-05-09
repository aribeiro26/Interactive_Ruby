Dado('Acessar pagina Inicial') do
  visit '/'
end
  
Quando('Pesquisar {string}') do |produto|
  cmp.Pesquisar(''+produto+'')
end
 
E('Adicionar no Carrinho') do
  cmp.Comprar('Check Out')
end
  
Entao('Finalizar a Compra') do
  cmp.Evidencia('Compra do Produto')
end