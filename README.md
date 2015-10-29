# RequestParty

This gem uses [httparty](https://github.com/jnunemaker/httparty) to create custom requests

## Installation

Add this line to your application's Gemfile:

    gem 'request_party'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install request_party

## Usage

Start with setting the base_uri on initializing:

  RequestParty.new("http://my-site/api")

Make a POST request:

  request = RequestParty.new("http://my-site/api")
  request.post("/user/authenticate", body_hash)

or just:

  RequestParty.new("http://my-site/api").post("/user/authenticate", body_hash)

Where the parameter body_hash equals the Hash for the request's body.

Make a GET request:

  request = RequestParty.new("http://my-site/api")
  request.get("/user/12")

or just:

  RequestParty.new("http://my-site/api").get("/user/12")

Make PUT request:

  request = RequestParty.new("http://my-site/api")
  request.put("/user/12/update", body_hash)

or just:

  RequestParty.new("http://my-site/api").put("/user/authenticate", body_hash)

Where the parameter body_hash equals the Hash for the request's body.


## Contributing

1. Fork it ( https://github.com/[my-github-username]/request_party/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
