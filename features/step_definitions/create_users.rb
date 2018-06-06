When("I make a post in this rote with attribute name {string} and atribute job {string}") do |name_user, job_user|

  @result = RegresAPI.post(@url_token.to_str, 
    :body => { :name => name_user, 
               :job => job_user
             }.to_json,
    :headers => { 'Content-Type' => 'application/json' } )

  @parsed_result = JSON.parse(@result.response.body)
  
end

Then("it should return the attribute name with {string}") do |name_user|
  expect(@parsed_result['name']).to eq name_user
end

Then("it should return the attribute job with {string}") do |job_user|
  expect(@parsed_result['job']).to eq job_user
end