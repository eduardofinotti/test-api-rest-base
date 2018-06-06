When("I make a post in this rote with atribute email {string} and atribute password {string}") do |email, password|
  
  @result = RegresAPI.post(@url_token.to_str, 
    :body => { :email => email, 
               :password => password
             }.to_json,
    :headers => { 'Content-Type' => 'application/json' } )

  @parsed_result = JSON.parse(@result.response.body)

end