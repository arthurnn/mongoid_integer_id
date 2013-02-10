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

```ruby
class Person
  include Mongoid::Document
  include Mongoid::IntegerId

  field :name

end
```

```
> person = Person.create!
> puts person.id
=> 1
```

A collection to store the sequences will be created. The default name of the collection is 'sequences'. If you desire to store it in a different collection, you can add this line to your model:

```ruby
auto_increment(:collection_name)
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request