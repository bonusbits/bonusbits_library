module BonusBits
  # Discovery Class
  class AWS
    def self.fetch_az_region
      require 'net/http'
      url = 'http://169.254.169.254/latest/meta-data/placement/availability-zone'
      response = Net::HTTP.get_response(URI(url))
      raise 'Failed AZ HTTP Response' unless response.is_a? Net::HTTPSuccess
      az = response.body
      region = az.slice(0..-2)

      results = {
        az: az,
        region: region
      }
      results
    end
  end
end
