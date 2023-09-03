Quando('acessar a página do produto') do                                     
    #@search_results_page.products.fisrt.name.click #acessando a pagina vendo os produtos pegando o primeiro e clicando no nome dele
    @search_results_page.acess_product_page(1) # puxando um metodo do search_results para não ficar tantos ponto assim aq
    @product_page = Pages::ProductPage.new #quando acessa a pagina do produto pela linha de cima para iniciar
  end                                                                          
                                                                               
  Quando('alterar a cor do produto') do    
    @image_before = @product_page.main_image['src'] #pegando o src da imagem pra ver ela mudando e jogando dentro de uma variavel para comparar depois                  
    @product_page.colors[1].click #clicando na cor, sempre clicando na cor que vem depois da primeira
  end                                                                          
                                                                               
  Então('deverá alterar a imagem apresentada na PDP') do                       
    expect(@product_page.main_image['src']).not_to eql @image_before #espera que a imagem atual seja diferente da anterior
  end                                                                          

  Dado ('que esteja na página de um produto existente') do #step Dinamico: tem que colocar uma palavra especial para funcionar: steps %{e aqui vai os passos}
    steps %{Dado que esteja na home
            Quando realizar uma busca por um produto existente
            E acessar a página do produto}
  end