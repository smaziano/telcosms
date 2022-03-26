# Telcosms

A ruby gem created by [Sergio Maziano](http://github.com/smaziano) for the [TelcoSMS](http://telcosms.co.ao) API that allows your application to send sms to Angolan Numbers.

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
Make sure you have access to your username and password (can be requested to the TelcoSMS team)
and setup as your environment variables.

### Environment variables
|Env Variable|Value|
|-|-|
|TELCOSMS_USERNAME| The username provided by TelcoSMS|
|TELCOSMS_PASSWORD| The password provided by TelcoSMS|

## Usage
You need to pass 3 arguments to make it work (number, message, service).
```ruby
telco = Telcosms.new
telco.send(number: '+244923456789', message: 'Hello World\nNext line', service: 'TelcoSMS')
```
## Schema
|field |type|notes|
|-|-|-|
|number|string|number with or without a country code|
|message|string|the message content|
|service|string|sender identifier |

## Help and Docs

- [TelcoSMS](http://telcosms.co.ao)
- [RDOC](http://www.rubydoc.info/gems/telcosms/1.0.0)

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