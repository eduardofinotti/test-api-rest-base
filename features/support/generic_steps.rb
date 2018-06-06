Then("it should return a response with a {string} response code") do |code|
  expect(@result.response.code).to eq code
end

Then("it should return the attribute {string} not equal zero") do |attribute|
  expect(@parsed_result[attribute]).not_to eq 0
  expect(@parsed_result[attribute]).not_to eq ""
end