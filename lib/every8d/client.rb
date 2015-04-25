require "net/http"

module Every8d
  class Client
    attr_accessor :account, :password

    def initialize(options = {})
      @uid = options.fetch(:UID) { ENV.fetch('EVERY8d_ACCOUNT') }

      @pwd = options.fetch(:PWD) { ENV.fetch('EVERY8d_PASSWORD') }

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
      Net::HTTP.post_form(URI.parse("#{@host}/#{url}"), data.merge(UID: @uid, PWD: @pwd)).body
    end
  end
end