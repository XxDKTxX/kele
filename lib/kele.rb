require "httparty"
require 'json'

class Kele
  
  include HTTParty

  def initialize(email, password)
    p email
    p password
    response = self.class.post(api_url("sessions"), body: { email: email, password: password })
    raise 'Invalid email or password' if response.code == 404
    @auth_token = response["auth_token"]

  end

  private

  def api_url(endpoint)
    "https://www.bloc.io/api/v1/#{endpoint}"
  end

end