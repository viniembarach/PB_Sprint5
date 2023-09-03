#language: pt

@regression
@search
Funcionalidade: Busca
    COMO um usuário do Ecommerce Magazine Luiza
    QUERO poder buscar por diferentes produtos
    PARA poder personalizar minhas compras

    Contexto: Estar na home
        Dado que esteja na home

    @search_for_product
    Cenário: Buscar por um produto existente
        Quando realizar uma busca por um produto existente
        Então deverão ser retornados resultados na busca

    @search_for_different_products
    Esquema do Cenário: Buscar por produtos existentes
        Quando buscar pelo produto "‹produto›"
        Então deverão ser retornados resultados sa busca
    Exemplos:
    |  produto       |
    |  Geladeira     |
    |  celular       |
    |  Guarda-roupa  |
    |  Iphone        |
    |  Air fryer     |
# primeira execução = Geladeira
# segunda execução = Celular
# terceira execução = Guarda-roupa
# ...