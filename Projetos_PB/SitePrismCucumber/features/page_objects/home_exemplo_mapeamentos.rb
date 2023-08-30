class FooterExemploMapeamentos < SitePrism::Section
    element :img_facebook, 'img[name="follow_facebook]' # para pegar o elemento q está dentro
    element :img_twitter, 'img[name="follow_twitter"]'
end

class ProductsExemploMapeamentos < SitePrism::Section
    element :name, 'a.productName' # selecionar o nome e o preço
    element :price, 'a.productPrice'
end

class HomeExemploMapeamentos < SitePrism::Page
    set_url '/'

    element :btn_open_search, '#search #menuSearch'
    
    elements :menu_items, '.nav-li-links a'
    # menu_items.first.click # para selecionar o primeiro
    # menu_items[2].click #para selecionar o segundo
    
    section :footer, FooterExemploMapeamentos, 'footer.ng-scope' #nome, classe, mapeamento
    #footer.img_facebook.click #para clicar nele
    
    sections :products, ProductsExemploMapeamentos, '.categoryRight li.ng-scope'
    # products[2].price.click #para selecionar o segundo elemento e clickar
    # products.last.click


    #Elementos de mapeamento
    # element : elemento unico na pagina ex:input de uma senha
    # elements: lista de elementos ex: array com elementos ou listas
    # section : partes maiores do site ex: pates que contem elementos dentro Um Formulario
    # sections: Uma lista de seções das paginas ex: lista de produtos
    #element :logo, 'img[class="lnXdpd"]'  # mapear o elemento 
end