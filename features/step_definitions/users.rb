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
  
end

