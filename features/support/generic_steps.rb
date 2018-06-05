Then("it should return a response with a {string} response code") do |code|
  expect(@result.response.code).to eq code
end