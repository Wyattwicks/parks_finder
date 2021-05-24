class ParkService
  class << self

    def state_parks(state_code)
      response = conn.get("parks") do |req|
        req.params['stateCode'] = state_code
      end
      parse_data(response)
    end
    private

    def conn
      Faraday.new(url: "https://developer.nps.gov/api/v1/") do |faraday|
        faraday.params['api_key'] = "#{ENV['parks_api_key']}"
        
      end
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end

# :data -> :states