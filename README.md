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
It has three parameters. 
"limit" which is defaulted to 32 and controls how far to show the characters.
"more_indicator" which defaults to "." and controls which character to use to indicate there are more.
"indicator_length" which defaults to 3 and controls how many times to show the more indicator.

```ruby
'hello'.limit_print
'hello'

'elephant'.limit_print(limit: 2)
'el...'

'elephant'.limit_print(limit: 2, indicator_length: 0)
'el'

'elephant'.limit_print(limit: 3, more_indicator: '_')
'ele___'

'elephant'.limit_print(limit: 4, more_indicator: '*', indicator_length: 2)
'elep**'
```

### To Smart Array

Take a string and splits it to an array by ",", "|", space, or by a passed parameter.
It also strips whitespace.

```ruby
'cat, dog, matt'.to_smart_array
['cat', 'dog', 'matt']

' cat , dog, matt,pat '.to_smart_array
['cat', 'dog', 'matt', 'pat']

' cat   dog  matt pat '.to_smart_array
['cat', 'dog', 'matt', 'pat']

' cat # dog# matt#pat '.to_smart_array('#')
['cat', 'dog', 'matt', 'pat']
```

### To Titleize

Titleize for none rails project. It also removes unnecessary white spaces and converts "_" to spaces.

```ruby
'hello world!'.to_titleize
"Hello World!"

'HELLO WORLD!'.to_titleize
"Hello World!"

'hello_world!'.to_titleize
"Hello World!"

' hello world! '.to_titleize
"Hello World!"
```

### to yes no

This function returns a string from a boolean to yes or no.
It takes in optional casting parameter which can be either capitalize, upcase, or downcase.

```ruby
true.to_yes_no
'Yes'

true.to_yes_no(:upcase)
'YES'

false.to_yes_no(:downcase)
'no'

false.to_yes_no
false.to_yes_no(:capitalize)
'No'
```

### to yn

This function returns a string from a boolean to Y or N

```ruby
true.to_yn
'Y'

true.to_yn(capital_letter: false)
'y'

false.to_yn
'N'

false.to_yn(capital_letter: false)
'n'
```

### to_i

Returns 1 for true and 0 for false on a boolean object.

### add_percent_sign

It takes float and adds percentage to it.

```ruby
25.75.add_percent_sign
'25.75%'
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/SaimonL/render-text-helper

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
