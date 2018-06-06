# Generic method to valid the return response code of requests
Then("it should return a response with a {string} response code") do |code|
  expect(@result.response.code).to eq code
end

# Generic method to valid return NOT EQUAL zero
Then("it should return the attribute {string} not equal zero") do |attribute|
  expect(@parsed_result[attribute]).not_to eq 0
  expect(@parsed_result[attribute]).not_to eq ""
end

# Generic method to valid return error
Then("return attribute {string} with {string}") do |attribute, error|
  expect(@parsed_result[attribute]).to eq error
end
