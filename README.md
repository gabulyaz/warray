# Warray

[![Gem Version](https://badge.fury.io/rb/warray.svg)](http://badge.fury.io/rb/warray)
[![Build Status](https://travis-ci.org/gabulyaz/warray.svg?branch=master)](https://travis-ci.org/gabulyaz/warray)
[![Code Climate](https://codeclimate.com/repos/55252920e30ba060cd004967/badges/5089577f6fdc90e421c5/gpa.svg)](https://codeclimate.com/repos/55252920e30ba060cd004967/feed)


A simple weighted array implementation.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'warray'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install warray

## Usage

```ruby
require 'warray'

# Take an array with values and weight
c=%w(apple 60% orange 30% peach 10%)
# Initialize a Warray object
w = Warray.new(c)
# Build an array with weighted items
puts w.build.to_s
=> ["apple", "apple", "apple", "apple", "apple", "apple", "orange", "orange", "orange", "peach"]

# Warray object size
puts w.size # or w.length
=> 3

# Warray object summarized weight
puts w.wsum
=> 100

# An another example
b=%w(girl 3 boy 5)
w = Warray.new(b)
# you can also use common array methods on the builded array
puts w.build.sample(5).to_s
=> ["boy", "girl", "boy", "girl", "boy"]
puts w.build.sort.to_s
=> ["boy", "boy", "girl", "girl", "girl"]

```



## Contributing

1. Fork it ( https://github.com/gabulyaz/warray/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

MIT License, Copyright (c) 2015 Zoltan Gabulya
