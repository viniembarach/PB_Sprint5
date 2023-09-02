# Before do
#    puts 'Estou executando antes de cada cenário' 
# end

# After do |scenario|
#     puts 'Estou executando depois'
#     puts scenario.failed?
# end

# After('@limpar_banco') do
#     puts 'EXECUTANDO DEPOIS DO CENARIO Carregar página do Google CENÁRIO 2'
# end
# Aqui tem como você comprovar que o cenario falhou antes ou depois de cada cenário para tirar uma captura de tela

# After do #fazendo screenshot dos reports
#     screenshot = Capybara.page.save_screenshot("reports/screenshot/sc.png") #para salvar a screenshot
#     attach(screenshot, 'image/png') #passando a variavel que criou em cima q tem  ocaminho  e colocando o tipo so screenshot#adicionar ela aos nossos reports
# end

# After do |scenario|#fazendo screenshot dos reports somente quando da erro 
#     if scenario.failed? # se o cenario falhar 
#         screenshot = Capybara.page.save_screenshot("reports/screenshot/sc.png") #para salvar a screenshot
#         attach(screenshot, 'image/png') #passando a variavel que criou em cima q tem  ocaminho  e colocando o tipo so screenshot#adicionar ela aos nossos reports
#     end
# end

After do |scenario|#fazendo screenshot dos reports somente quando da erro 
    screenshot = Capybara.page.save_screenshot("reports/screenshot/sc.png") #para salvar a screenshot
    attach(screenshot, 'image/png') #passando a variavel que criou em cima q tem  ocaminho  e colocando o tipo so screenshot#adicionar ela aos nossos reports
end


#bundle exec cucumber
#bundle exec cucumber -p default -t@search_for_product --publish 
# o publish serve para compartilhar o report com o time