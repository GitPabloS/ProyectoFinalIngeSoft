Given("visito la pagina de inicio") do
    visit '/' # Write code here that turns the phrase above into concrete actions
end
  
Then("deberia ver un mensaje {string}") do |mensaje|
    last_response.body.should =~ /#{mensaje}/m # Write code here that turns the phrase above into concrete actions
end