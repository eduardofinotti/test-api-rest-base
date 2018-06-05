Given("I have the rote {string}") do |rote|
      @url_token = rote
end

When("I make a get in this rote") do
  query = {
  }

  @result = RegresAPI.get(
    @url_token.to_str,
    :query => query,
    :headers => {:content_type => 'application/json'}
  )

  @json_result = JSON.parse(@result.response.body)
  
end

Then("I get the user named {string}") do |name|
  expect(@json_result['data']['first_name']).to eq name
end

Then("I get the user with last name {string}") do |lastname|
  expect(@json_result['data']['last_name']).to eq lastname
end

Then("I get the avatar user {string}") do |avatar|
  expect(@json_result['data']['avatar']).to eq avatar
end