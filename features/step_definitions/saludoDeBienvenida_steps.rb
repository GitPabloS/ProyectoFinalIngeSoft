Given("Ingreso el nombre {string} en el campo {string}") do |valor, campo|
    fill_in(campo, :with => valor) # Write code here that turns the phrase above into concrete actions
end
  
When("presiono el boton {string}") do |name|
    click_button(name) # Write code here that turns the phrase above into concrete actions
end
  
Then("deberia ver {string}") do |saludo|
    last_response.body.should =~ /#{saludo}/m  # Write code here that turns the phrase above into concrete actions
end