class Home < SitePrism::Page
    set_url '/'

    element :btn_open_search, '#search #menuSearch'
    element :input_search, '#autoComplete'
    element :loader, 'body > .loader'

    def search_for(product)
        btn_open_search.click
        input_search.set product
        #sleep 4 #dorme por 4seg   É melhor evitar ele
        # dessa forma garante que vai ter um loader
        wait_until_loader_visible # espera que fique visivel para mudar (wait: 2) se não ele pega o padrao do env
        wait_until_loader_invisible # e depois espera que fique invisivel
        btn_open_search.click
    end
end