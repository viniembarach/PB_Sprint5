require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'selenium-webdriver'
require 'rspec'
require 'pry'

ENVIRONMENT = ENV['ENVIRONMENT']
ENVIRONMENT_CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environment/#{ENVIRONMENT}.yml")
#Jogando pra dentro o conteudo que está dentro da raiz do projeto e concatenando com o enviroment
#puts ENVIRONMENT
puts ENVIRONMENT_CONFIG
URL = ENVIRONMENT_CONFIG['url']
# para rodar cucumber -p default
# o -p é de parametro


#Configurando o prorpio driver
Capybara.register_driver :my_chrome do |app|
    caps = Selenium::WebDriver::Remote::Capabilities.chrome("goog:chromeOptions" => {"args" => [ "--ignore-ssl-errors",
                                                                                                 "--ignore-certificate-errors", "--disable-popup-blocking", "--incognito", 
                                                                                                 "--start-maximized", "--window-size=1420,835", "--disable-gpu", 
                                                                                                 "--disable-translate", 
                                                                                                 "--no-sandbox", "--acceptInsecureCerts=true", "--disable-impl-side-painting", "--debug-level=3"]}) #para abrir de forma anonima
    
    if ENV['HEADLESS'] # HEADLESS vai rodar mais rapido e em um servidor que não tem interface grafica dai vai precisar rodas em headless
        caps['goog:chromeOptions']['args'] << '--headless'
        caps['goog:chromeOptions']['args'] << '--disabled-site-isolation-trials'
    end

    client = Selenium::WebDriver::Remote::Http::Default.new
    client.read_timeout = 90
    options = { browser: :chrome, desired_capabilities: caps, http_client: client} # colocando o browser que vai ser o chrome e o desired_capabilities que setamos em cima
    #um tipo que usa o chrome com aquelas capabilities
    puts 'Raising driver'
    Capybara::Selenium::Driver.new(app, options)
    #(app, :browser => :chrome, desired_capabilities: options) não precisa setar o brouser, pos ja setamos ele em cima
end



# Capybara.default_driver = :selenium_chrome # Configuração do browser
# Capybara.app_host = 'https://www.google.com.br'    # Url Padrão 
Capybara.default_driver        = :my_chrome # Configuração do browser alterada conforme registro
Capybara.app_host              = URL
Capybara.default_max_wait_time = 10 #explicitos waters
