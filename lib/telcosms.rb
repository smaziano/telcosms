require_relative "telcosms_module"

class Telcosms
  include TelcosmsModule

  def initialize(username: set_username, password: set_password, service: nil)
    @username = username
    @password = password
  end

  private
    def set_username
      ENV.fetch('TELCOSMS_USERNAME')
    end

    def set_password
      ENV.fetch('TELCOSMS_PASSWORD')
    end
end