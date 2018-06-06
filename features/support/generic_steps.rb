# Generic method to get actual rote
Given("I have the rote {string}") do |rote|
  @url_token = rote
end

# Generic method to valid the return response code of requests
Then("return a response with a {string} response code") do |code|
  expect(@result.response.code).to eq code
end

# Generic method to valid return NOT EQUAL zero
Then("return the attribute {string} not equal zero") do |attribute|
  expect(@parsed_result[attribute]).not_to eq 0
  expect(@parsed_result[attribute]).not_to eq ""
end

# Generic method to valid retorned attribute after request
Then("return the attribute {string} with {string}") do |attribute, value|
  expect(@parsed_result[attribute]).to eq value
end
