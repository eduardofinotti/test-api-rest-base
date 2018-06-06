When("I make a post in this rote with atribute name {string} and atribute job {string}") do |name_user, job_user|

  @result = RegresAPI.post(@url_token.to_str, 
    :body => { :name => name_user, 
               :job => job_user
             }.to_json,
    :headers => { 'Content-Type' => 'application/json' } )

  @parsed_post = JSON.parse(@result.response.body)
  
end

Then("it should return the atributes name with {string}") do |name_user|
  expect(@parsed_post['name']).to eq name_user
end

Then("it should return the atributes job with {string}") do |job_user|
  expect(@parsed_post['job']).to eq job_user
end

Then("it should return the atributes id not zero") do
  expect(@parsed_post['id']).not_to eq 0
  expect(@parsed_post['id']).not_to eq ""
end

Then("it should return the atributes createAtnot zero") do
  expect(@parsed_post['createdAt']).not_to eq 0
  expect(@parsed_post['createdAt']).not_to eq ""
end