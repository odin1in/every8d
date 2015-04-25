require "net/http"

module Every8d
  class Client
    attr_accessor :account, :password

    def initialize(options = {})
      @account = options.fetch(:account) { ENV.fetch('EVERY8d_ACCOUNT') }

      @password = options.fetch(:password) { ENV.fetch('EVERY8d_PASSWORD') }

      @host = options.fetch(:host) { 'http://api.every8d.com/API21/HTTP' }
    end

    def get_message(options = {})
      http_post('getDeliveryStatus.ashx', options)
    end

    def get_balance
      http_post('getCredit.ashx')
    end

    def send_sms(options = {})
      http_post('sendSMS.ashx', options)
    end

    def http_post(url, data = {})
      Net::HTTP.post_form(URI.parse("#{@host}/#{url}"), data.merge(UID: @account, PWD: @password)).body
    end
  end
end