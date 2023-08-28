Dado('que esteja na home') do
    @home_page = Home.new  # com o @ na frente da pra chamar em outros steps
    @home_page.load        # para carregar a pagina
  end
  
  Então('deverá apresentar o logo da Google') do
    expect(@home_page).to have_logo # espera que a home_page tenha logo // da pra colocar que ela não tenha a logo com o not_to
  end  