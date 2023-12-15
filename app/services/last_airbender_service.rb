require 'open-uri'
require 'json'

class LastAirbenderService
  BASE_URL = 'https://last-airbender-api.fly.dev/api/v1/characters'

  def self.get_characters(params = {})
    url = "#{BASE_URL}?#{URI.encode_www_form(params)}"
    begin
      response = URI.open(url).read
      parsed_response = JSON.parse(response)
      parsed_response
    rescue StandardError => e
      {}
    end
  end
end