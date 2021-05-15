Dado('Acesso pagina Inicial') do
  visit '/'
end

Quando('Pesquiso {string}') do |produto|
  page.Pesquisar(''+produto+'')  
end

Entao('verifico se o Produto é encontrado') do
  page.Evidencia('Detalhes do Produto')  
end



