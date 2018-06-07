# Class to delete users

# Request delete users
When("I make a delete in this rote") do

  query = {}
  @result = RegresAPI.delete(@url_token.to_str, 
    :query => query,
    :headers => { 'Content-Type' => 'application/json' } )
end