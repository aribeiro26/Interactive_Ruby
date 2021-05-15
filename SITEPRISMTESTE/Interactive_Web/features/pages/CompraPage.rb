class Compra < SitePrism::Page

    def Pesquisar(produto)
    fuc = FuncoesTeste.new
    fuc.Escrever('#search_query_top',''+produto+'')
    fuc.Click('.','button[class*="button-search"]')    
    end 

    def Comprar(detalhes)
        fuc = FuncoesTeste.new  
         
        fuc.JS('document.querySelector("#center_column > ul > li > div > div.right-block > div.button-container > a.button.ajax_add_to_cart_button.btn.btn-default > span").click()')    
        #fuc.Click('.','a[class*="button ajax_add_to_cart_button btn btn-default"]')                     
        fuc.Click('xpath','//a[@title="Proceed to checkout"]')
        fuc.Screen(''+detalhes+'')
        fuc.Click('xpath','//a[@title="Proceed to checkout"]')
    end

    def Evidencia(detalhes)
        fuc = FuncoesTeste.new
        fuc.JS('window.scrollBy(0,450)')
        #ev.Click('xpath','//*[@id="send_friend_button"]')
        sleep(4)
        fuc.Screen(''+detalhes+'')        
    end

end