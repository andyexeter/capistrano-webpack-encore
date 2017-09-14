capistrano-webpack-encore
=====================

Capistrano v3.* extension to run Symfony's [Webpack Encore](https://github.com/symfony/webpack-encore) during deployment.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano', '~> 3.3.0'
gem 'capistrano-webpack-encore'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-webpack-encore

## Usage

Require in `Capfile` to use the default task:

```ruby
require 'capistrano/webpack_encore'
```

The build command is executed during `deploy:updated`

Configurable options:

```ruby
set :webpack_encore_env, "production"    # default
set :webpack_encore_flags, ""            # default
```

## License

Released under the [MIT license](LICENSE)
