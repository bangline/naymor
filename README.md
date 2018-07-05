# Naymor

A stupidly simple random name generator that tries to be unique. It aspires to generate names in the same ilk as heroku default app names `adjective-noun-random_number`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'naymor'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install naymor

## Usage

Naymor only has three available methods.

### .generate

This is the go to method. `Naymor.generate` returns the string you want.

### .populate_adjectives(IO)

Feel like using a custom list of adjectives? Pass an IO based object, usually a file

```
Naymor.populate_adjectives(File.open('path/to/file.txt')
```

### .populate_nouns(IO)

Same as populating the adjectives (above)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/bangline/naymor. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Naymor project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/bangline/naymor/blob/master/CODE_OF_CONDUCT.md).
