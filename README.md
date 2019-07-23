# Telcosms

A ruby gem created by [SmartTechys](http://www.smarttechys.co.ao) for the [TelcoSMS](http://telcosms.co.ao) API that allows your application to send sms to Angolan Numbers.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'telcosms'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install telcosms

## Setup
Make sure you have access to your username and password that can be requested to the TelcoSMS crew.

## Usage

```ruby
## Use the class methods to get it going

# New Message
## You need to pass 5 arguments to make it work (numbers, message, username, password, servico)

Telcosms.new_sms(numbers, message, username, password, servico)

## numbers is an array of the numbers you want to send the sms.
## message is a string os characters that contain the message.
## username is a string with username given by the Telcosms crew(as best practive, use environment variable).
## password is a string with password given by the Telcosms crew(as best practive, use environment variable).
## servico is a string with the text that will show up as contact sender.

## Help and Docs

- [TelcoSMS](http://telcosms.co.ao)
- [RDOC](http://www.rubydoc.info/gems/telcosms/0.0.4)

## Development

- You can fork it
- bundle
- bundle rake exec
- Make your feature addition or fix a bug
- Do not  mess with the rakefile version or history (do not submit version bump PLEASE or put it in a different commit so we can ignore it when pull)
- Send us the pull request

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/smaziano/telcosms. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

