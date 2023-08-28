require 'capybara/dsl'

class BasePage
    include Capybara::DSL

    def load
        # visit('https://www.google.com.br/')
        visit('/')
    end

end