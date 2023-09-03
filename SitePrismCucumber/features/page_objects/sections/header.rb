module Sections
    class Header < SitePrism::Section
        element :btn_open_search, '#search #menuSearch'
        element :input_search, '#autoComplete'
        element :clsoe_search, 'img[src$="closeDark.png"]' #mapeando o x para fechar a busca
    
        def click_and_input_text_for_search(text) # aqui ele vai apertar na lupa e colocar o texto tirando  ocodigo da home.rb
            btn_open_search.click
            input_search.set text
        end
    end
end