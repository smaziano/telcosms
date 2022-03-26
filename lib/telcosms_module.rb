require "telcosms/version"
require "httparty"

module TelcosmsModule
  class Error < StandardError; end
	include HTTParty
  follow_redirects false
	base_uri "196.216.53.194:9501"
  
  def send(number:, message:, service: @service)
    content = set_headers
    msg_encoded = URI.encode(message)
    request = HTTParty.post("#{host}/api?action=sendmessage&username=#{@username}&password=#{@password}&recipient=#{number}&messagetype=SMS:TEXT&messagedata=#{msg_encoded}&originator=#{@service}", content)
    return request
  end

  private
    def set_headers
      content = {}
      headers = {'Content-Type' => "application/json"}
      content[:headers] = headers
      content
    end

    def host
      "http://196.216.53.194:9501"
    end
end
