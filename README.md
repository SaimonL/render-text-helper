# Render::Text::Helper

This gem extends text manipulation to classes like String, Boolean etc..

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add render-text-helper

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install render-text-helper

## Usage

### Limit Print

This function makes sure that the string does not go over a specific given limit.
It has two parameters "limit" which is defaulted to 32 and "more_indicator" which
defaults to "."

```ruby
'hello'.limit_print
'hello'

'elephant'.limit_print(limit: 2)
'el...'

'elephant'.limit_print(limit: 2, more_indicator: '')
'el'

'elephant'.limit_print(limit: 3, more_indicator: '_')
'ele___'
```

### to yes no

This function converts a boolean to yes or no.

```ruby
true.to_yes_no
'yes'

true.to_yes_no(capital_letter: true)
'YES'

false.to_yes_no
'no'

false.to_yes_no(capital_letter: true)
'NO'
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/SaimonL/render-text-helper

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
