# Class to create users

# Request create users
When("I make a post in this rote with attribute name {string} and atribute job {string}") do |name_user, job_user|

  @result = RegresAPI.post(@url_token.to_str, 
    :body => { :name => name_user, 
               :job => job_user
             }.to_json,
    :headers => { 'Content-Type' => 'application/json' } )

  @parsed_result = JSON.parse(@result.response.body)
  
end