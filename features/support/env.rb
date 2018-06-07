require 'cucumber'
require 'httparty'
require 'rspec'
require 'json'
require 'pry'

# This class instances the Regres
class RegresAPI
  include HTTParty
  base_uri 'https://reqres.in/'
  default_params output: 'json'
end
