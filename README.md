KSS Rails
=========

KSS Rails provides a Rails 3 engine for you to mount onto your existing Rails 3 application that will automatically parse your stylesheets that live within `app/assets/stylesheets` and give you a styleguide visible at whichever URL you choose.

Install the gem:

```
gem install kss-rails
```

Add it to the development group within the `Gemfile`:

```ruby
group :development do
  gem 'kss-rails'
end
```

Mount the engine within your `config/routes.rb` file. It's recommended to limit it to only the development environment as demonstrated below.

```ruby
Example::Application.routes.draw do
  root :to => 'home#index'

  mount Kss::Engine => '/kss' if Rails.env.development?
end
```

That's it, open up your app and visit `http://yoururl/kss` and you will see your new styleguide.

## Customizing

Out of the box KSS Rails has built in templates, stylesheets and javascripts that you can use without any customization which will fine.

But if you're looking to add more functionality or updating the templates, you can create your own copy within your application at any of the paths within the [app folder](https://github.com/dewski/kss-rails/tree/master/app).