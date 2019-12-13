Given("visito la pagina de datosSimulacion") do
    visit '/llenadoDeInformacion' # Write code here that turns the phrase above into concrete actions
end
  
Given("lleno el campo {string} con el valor de {string}") do |campo, value|
    fill_in(campo, :with => value) # Write code here that turns the phrase above into concrete actions
end
  
When("presiono el boton de {string}") do |name|
    click_button(name) # Write code here that turns the phrase above into concrete actions
end
  
Then("deberia ver el mensaje {string}") do |text|
    last_response.body.should =~ /#{text}/m # Write code here that turns the phrase above into concrete actions
end

Given("lleno el campo y {string} con el valor de {string}") do |campo, value|
    fill_in(campo, :with => value) # Write code here that turns the phrase above into concrete actions
  end
  
  Then("deberia ver el mensaje de la pos {string}") do |text|
    last_response.body.should =~ /#{text}/m # Write code here that turns the phrase above into concrete actions
  end