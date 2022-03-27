require "spec_helper"
require "httparty"
require_relative "../../lib/telcosms"

describe "TelcoSMS" do
  context "SMS" do
    context "when credentials are wrong" do
      it "should not send message" do
        telco = Telcosms.new(username: 'Username', password: 'Password')
        message = telco.send(number: '900000000', message: 'Hello World', service: 'TelcoSMS')

        expect(message).to be_an(HTTParty::Response)
        expect(message["response"]["data"]["errorcode"]).to eq("1157")
        expect(message["response"]["data"]["errormessage"]).to eq("ERROR 1157: Invalid username or password.")
      end
    end
    context "when credentials are correct" do
      it "should send message" do
        telco = Telcosms.new
        service = "TelcoSMS"
        data = "Hello World"
        number = "900000000"
        message = telco.send(number: number, message: data, service: service)

        expect(message).to be_an(HTTParty::Response)
        expect(message["response"]["data"]["acceptreport"]["statuscode"]).to eq("0")
        expect(message["response"]["data"]["acceptreport"]["statusmessage"]).to eq("Message accepted for delivery")
        expect(message["response"]["data"]["acceptreport"]["originator"]).to eq(service)
        expect(message["response"]["data"]["acceptreport"]["recipient"]).to eq(number)
        expect(message["response"]["data"]["acceptreport"]["messagedata"]).to eq(data)
      end
    end
  end
end