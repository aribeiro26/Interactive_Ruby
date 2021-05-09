class FuncoesTeste
    include Capybara::DSL

    def Escrever(elemento,texto)                
       find(''+elemento+'').set texto
        
    end  

    def Click(tipo,elemento) 
        if(tipo != 'xpath') then
            find(''+elemento+'').click             
        elsif(tipo == 'xpath') then
            find(:xpath,''+elemento+'').click       
        end        
    end
     
    def Valida(elemento,texto)
        find(''+elemento+'')
        has_text?(''+texto+'')
    end

    def JS(elemento)
        page.execute_script(''+elemento+'')
    end

    def Screen(nome)
        local = "results/Screenshots/Evidencia_Step"
        screen = "#{local}/#{nome}.png"
        page.save_screenshot(screen)
        #embed(screen, 'image/png', nome)
    end   

    def Iframe(id,elemento)
        within_frame((''+id+'')) do
            find(:xpath,''+elemento+'').click
        end
    end
        
end                                                     
            


