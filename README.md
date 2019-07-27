# Filescan

FileScan.dev API wrapper

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'filescan-api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install filescan-api

## Usage

```ruby
require 'filescan'
client = Filescan::Client.new(api_key=YOUR_API_KEY)
client.list_projects
client.project_id = PROJECT_ID_YOU_WANT_TO_USE
scan_id = client.check_file(File.open('malicious_file', 'rb'))["data"]["id"]
result = client.scan_report(scan_id)
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/filescan/ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Ruby project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/filescan/ruby/blob/master/CODE_OF_CONDUCT.md).
