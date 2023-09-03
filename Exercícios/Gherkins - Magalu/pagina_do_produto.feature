#language: pt

@regression
@pdp
Funcionalidade: Página do Produto
    SENDO um usuário da Magazine Luiza
    QUERO poder personalizar os produtos que irei comprar na página do produto
    PARA ter uma melhor experiência de compra

    Contexto: Estar na página de um produto
        Dado que esteja na home
        Quando realizar uma busca por um produto existente
        E acessar a página do produto

        @change_voltage_pdp
        Cenário: Alterar a voltagem do produto na PDP
            Quando alterar a voltagem do produto
            Então deverá alterar a voltagem apresentada na PDP

        @change_color_pdp
        Cenário: Trocar a cor do produto na PDP
            Quando alterar a cor do produto
            Então deverá alterar a imagem apresentada na PDP

        @buy_now_pdp
        Cenário: Comprar agora pela PDP
            Quando selecionar o comprar agora
            Então deverá ser direcionado para a sacola

        @add_product_to_cart_pdp
        Cenário: Adicionar produto ao carrinho pela PDP
            Quando adicionar o produto ao carrinho
            Então o produto deverá ser adicionado ao carrinho com sucesso

        @calculate_shipping_pdp
        Cenário: Calcular frete pela PDP
            Quando digitar o CEP da cidade
            Então deverá aparecer o valor do frete e disponibilidade
