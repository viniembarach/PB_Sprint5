Dado('que acesse a home') do
  # visit('https://www.google.com.br/')
  @google_home = GoogleHome.new
  @google_home.load
end
  
Então('deverá exibir o logo da Google') do
  # expect(page).to have_content 'Gmail'
  # expect(page).to have_css '.lnXdpd'
  # click_button 'Não conectar'
  expect(@google_home).to have_content 'Gmail'
  expect(@google_home).to have_css '.lnXdpd'
end

Quando('buscar por {string}') do |termo|
  # find("input[name='q']").set termo
  # #find(".UUbT9 .gNO89b").click
  # click_button 'Pesquisa Google'
  @google_home.search_for(termo)
  GoogleResults = GoogleResults.new
end

Então('deverão ser encontrados resultados') do
  # expect(page).to have_content 'Jeep Compass'
  expect(@google_home).to have_content 'Jeep Compass'
end