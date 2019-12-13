Given("visito la pagina del resultadoSimulacion") do
    visit '/resultadoSimulacion' # Write code here that turns the phrase above into concrete actions
end

Then("deberia ver el mensaje de la posicion final {string}") do |text|
    last_response.body.should =~ /#{text}/m # Write code here that turns the phrase above into concrete actions
end