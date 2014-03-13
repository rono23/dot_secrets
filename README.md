# dot_secrets

Enable dot syntax on nested Rails.application.secrets

## Requirements

Ruby >= 2.0 and Ruby on Rails >= 4.1.

## Installation

Add this line to your application's Gemfile:

    gem 'dot_secrets', github: 'rono23/dot_secrets'

And then execute:

    $ bundle

## Usage

Rails.application.secrets.foo.bar returns SOMEKEY in each environment.

    # config/secrets.yml
    development:
      foo:
        bar: SOMEKEY
    test:
      foo:
        bar: SOMEKEY
    production:
      foo:
        bar: SOMEKEY

#### Warning

Rails.application.secrets.foo is ActiveSupport::OrderedOptions. It's like a Hash, so you shouldn't set the names of Hash methods, numbers etc to the keys.

    # bad
    development:
      foo:
        key: SOMEKEY1
        each: SOMEKEY2
        merge: SOMEKEY3
        1234: SOMEKEY4
        123abc: SOMEKEY5

Rails.application.secrets.foo.key will raise an error, but Rails.application.secrets.foo[:key] returns SOMEKEY1.

If you want to access secrets as a Hash class, you can do like ```Hash[Rails.application.secrets.foo]```.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
