require_relative '../sections/header'

module Pages #refatorando
    class Home < SitePrism::Page
        set_url '/'

        
        section :header, Sections::Header, 'header'
        element :loader, 'body > .loader'
        element :input_email_contact_us, 'input[name="emailContactUs"]'
        element :input_message_contact_us, 'textarea[name="subjectTextareaContactUs"]'
        element :btn_send_message_contact_us, '#send_btn'
        element :success_message, '.successMessage' #mapeando a mensagem depois de enviar

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

        def send_message_contact_us(message_data) #metodo para inserir e enviar
            input_email_contact_us.set message_data[:email]
            input_message_contact_us.set message_data[:message]
            btn_send_message_contact_us.click
        end
    end
end