# Mongoid IntegerId

A Mongoid gem to add integer sequences for _id fields.

## Installation

Add this line to your application's Gemfile:

    gem 'mongoid_integer_id'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mongoid_integer_id

## Usage

Add this code to any Mongoid Document.

    include Mongoid::IntegerId

This will replace the field _id with a integer sequence.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request