Dado('que esteja na home') do
    @home_page = Pages::Home.new
    @home_page.load
    #binding.pry
end

Quando('realizar uma busca por um produto existente') do
    #@home_page.search_for('SPEAKERS')
    product_for_search = Factory::Static.static_data('valid_product') # 
    @home_page.search_for(product_for_search) #puxando da massa de dados da support/factory
    @search_results_page = Pages::SearchResults.new
end 

Então('deverão ser retornados resultados na busca') do
    #binding.pry
    expect(@search_results_page).to have_products
    #debugando ele
    #@search_results_page : debugar ela, mostrar o objeto
    #@search_results_page.products : ver o que é esse produto
    #@search_results_page.products.first : pegar o primeiro produto o caminho
    #@search_results_page.products.first.text : pegar o texto do primeiro produto

    expect(@search_results_page.products.first.all_there?).to be_truthy
end

Quando('buscar pelo produto {string}') do |product|
    @home_page.search_for(product)
    @search_results_page = Pages::SearchResults.new
end                                                                                                                                      

#bundle exec cucumber -p default -t@search_for_product rodar o projeto
#bundle exec cucumber -p default -t@search_for_different_products