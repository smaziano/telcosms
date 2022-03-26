require_relative "telcosms_module"

class Telcosms
  include TelcosmsModule

  def initialize(username: set_username, password: set_password, service: 'TelcoSMS')
    @username = username
    @password = password
    @service = service
  end

  private
    def set_username
      ENV.fetch('TELCOSMS_USERNAME')
    end

    def set_password
      ENV.fetch('TELCOSMS_PASSWORD')
    end
end
