require_relative '../sections/header'

module Pages #refatorando
    class Home < SitePrism::Page
        set_url '/'

        
        section :header, Sections::Header, 'header'
        element :loader, 'body > .loader'

        def search_for(product)
                    # btn_open_search.click
                # header.btn_open_search.click
                # header.input_search.set product
            header.click_and_input_text_for_search(product)
            #sleep 4 #dorme por 4seg   É melhor evitar ele
            # dessa forma garante que vai ter um loader
            wait_until_loader_visible # espera que fique visivel para mudar (wait: 2) se não ele pega o padrao do env
            wait_until_loader_invisible # e depois espera que fique invisivel
            header.btn_open_search.click
            header.clsoe_search.click #clicando no botão para fechar a busca
        end
    end
end