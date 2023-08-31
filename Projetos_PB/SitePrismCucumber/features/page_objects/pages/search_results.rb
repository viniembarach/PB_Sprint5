require_relative '../sections/header'
require_relative '../sections/products'

module Pages
    class SearchResults < SitePrism::Page
        set_url '/#/search'

        section :header, Sections::Header, 'header'
        #elements :products, 'div.categoryRight li.ng-scope'
        sections :products, Sections::Products, 'div.categoryRight li.ng-scope'

        def acess_product_page(index)
            products[index].name.click #caso queira acessar o produto que está no index 2 pode chamar esse metodo passando como index 2
        end
    end
end