# Every8d

Taiwan SMS Provider Every8d API

## Installation

Add this line to your application's Gemfile:

    gem 'every8d'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install every8d

## Usage

    $every8d = Every8d.Client.new(UID: YOUR_ACCOUNT, PWD: YOUR_PASSWORD)

    # Get Credit
    $every8d.get_credit

    # Send Message
    $every8d.send_sms(MSG: YOUR_MESSAGE, DEST: DEST_MOBILE)

    # Get Message Status
    $every8d.get_message(BID: MESSAGE_BID)

## Contributing

1. Fork it ( https://github.com/[my-github-username]/every8d/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
