# HttpDecoders

Decompress HTTP responses. Supports deflate and gzip. Extracted from [em-http-request](https://github.com/igrigorik/em-http-request).

[![Build Status](https://travis-ci.org/smartlyio/http_decoders.svg?branch=master)](https://travis-ci.org/smartlyio/http_decoders)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'http_decoders'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install http_decoders

## Usage

```ruby
decoder = HttpDecoders.decoder_for_encoding('gzip')
decompressed = decoder << data
decompressed += decoder.finalize!

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/smartlyio/http_decoders.
