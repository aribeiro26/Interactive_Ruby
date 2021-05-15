class Pesquisa < SitePrism::Page
    def Pesquisar(produto)
        fuc = FuncoesTeste.new
        fuc.Escrever('#search_query_top',''+produto+'')
        fuc.Click('.','button[class*="button-search"]')
        fuc.JS('window.scrollBy(0,400)')
        fuc.Valida('[itemprop="name"]','Faded Short Sleeve T-shirts')    
        fuc.Click('.','[src="http://automationpractice.com/img/p/1/1-home_default.jpg"]')
    end 

    def Evidencia(detalhes)
        fuc = FuncoesTeste.new
        fuc.JS('window.scrollBy(0,450)')
        #ev.Click('xpath','//*[@id="send_friend_button"]')
        sleep(4)
        fuc.Screen(''+detalhes+'')
        
    end

end