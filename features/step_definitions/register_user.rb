When("I make a post in this rote with atribute email {string} and atribute password {string}") do |email, password|
  
  @result = RegresAPI.post(@url_token.to_str, 
    :body => { :email => email, 
               :password => password
             }.to_json,
    :headers => { 'Content-Type' => 'application/json' } )

  @parsed_register = JSON.parse(@result.response.body)

end

Then("it should return the attribute token not equal zero") do
  expect(@parsed_register['token']).not_to eq 0
  expect(@parsed_register['token']).not_to eq ""
end