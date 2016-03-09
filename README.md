# ChicagoBusinessLicenses

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/chicago_business_licenses`. To experiment with that code, run `bin/console` for an interactive prompt.

Allows you to access City of Chicago's Business Licenses public API from ruby.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'chicago_business_licenses'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chicago_business_licenses

## Usage

To get all of the City of Chicago Business Licenses, run this code:

```ruby
licenses = ChicagoBusinessLicenses::License.all
```

To get all of the City of Chicago Employees with a search keyword, run this code:

```ruby
licenses = ChicagoBusinessLicenses::License.search('renew')
```

Replace 'renew' with your own search keyword.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/chicago_business_licenses.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

