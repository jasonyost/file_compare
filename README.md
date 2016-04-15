# FileCompare

A simple gem to SHA1 fingerprint and compare files

[![build status](https://travis-ci.org/jasonyost/file_compare.svg)](https://travis-ci.org/jasonyost/file_compare)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'file_compare'
```

And then execute:

```
$ bundle
```

Or install it from RubyGems:

```
$ gem install file_compare
```

## Usage

```ruby
require 'file_compare'

FileCompare.compare_files('path/to/left/file', 'path/to/right/file')
=> true/false

FileCompare.get_fingerprint('path/to/file')
=> "b9955dc5a222d79393a9ea72f84e2381df2a9f7a82a7056ccc9ac576657c0fd0"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at <https://github.com/jasonyost/file_compare>. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
