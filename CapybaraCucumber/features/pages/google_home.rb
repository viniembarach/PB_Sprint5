# require 'capybara/dsl'
class GoogleHome < BasePage
    # include Capybara::DSL

    # def load
    #     # visit('https://www.google.com.br/')
    #     visit('/')
    # end

    def search_for(query)
        # Localiza o elemento <textarea> usando um seletor CSS específico
        textarea_element = find("textarea[name='q']")
        
        # Insere o texto da pesquisa no elemento
        textarea_element.set(query)

        #find("input[name='q']").set query   esse jeito não deu certo sendo recorrido ao chatGPT
        #find(".UUbT9 .gNO89b").click
        click_button 'Pesquisa Google'

                # # Localiza o elemento <textarea> usando um seletor CSS específico
                # textarea_element = find("textarea[name='q']")
                
                # # Insere o texto da pesquisa no elemento
                # textarea_element.set(query)
                
                # # Pressiona a tecla Enter para submeter a pesquisa
                # textarea_element.send_keys(:enter)
    end
end