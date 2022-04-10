lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'telcosms/version'

Gem::Specification.new do |spec|
  spec.name          = "telcosms"
  spec.version       = TelcosmsModule::VERSION
  spec.authors       = ["Sergio Maziano"]
  spec.email         = ["sergio.maziano@gmail.com"]

  spec.summary       = %q{A Ruby gem for TelcoSMS API(http://telcosms.co.ao) made by Sergio Maziano(http://github.com/smaziano)}
  spec.description   = %q{A Ruby gem to connect your application with the TelcoSMS API's (http://telcosms.co.ao) to allow your application to send sms through Angolan numbers}
  spec.homepage      = "https://github.com/smaziano/telcosms"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.2.33"
  spec.add_development_dependency "rake", "~> 13.0.6"
  spec.add_dependency 'httparty', "~> 0.20.0"
end
