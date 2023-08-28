Before do
   puts 'Estou executando antes de cada cenário' 
end

After do |scenario|
    puts 'Estou executando depois'
    puts scenario.failed?
end

After('@limpar_banco') do
    puts 'EXECUTANDO DEPOIS DO CENARIO Carregar página do Google CENÁRIO 2'
end
# Aqui tem como você comprovar que o cenario falhou antes ou depois de cada cenário para tirar uma captura de tela

#bundle exec cucumber