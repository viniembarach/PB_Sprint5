module Pages
    class ProductPage < SitePrism::Page
        set_url '/'

        elements :colors, '.productColor'
        element  :main_image, '#mainImg' #mapeando ele como um elemento que tem como nome main_image
    end
    
end