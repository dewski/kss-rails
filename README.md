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

Mount the engine within your routes file. It's recommended you limit it to only the development environment as demonstrated below.

```ruby
Example::Application.routes.draw do
  root :to => 'home#index'

  mount Kss::Engine => '/kss' if Rails.env.development?
end
```

That's it, restart your app and visit `http://yoururl/kss` (or whichever URL you choose).

Please visit the [KSS repo](https://github.com/kneath/kss) for further documentation and helpful tips.

## Customizing

Out of the box KSS Rails has built in templates, stylesheets and javascripts that you can use without any customization just fine.

But if you're looking to add more layout styles or updating the templates, you can create your own copy within your application at any of the paths within the [app folder](https://github.com/dewski/kss-rails/tree/master/app).

## Note on Patches/Pull Requests

- Fork the project.
- Make your feature addition or bug fix.
- Add tests for it. This is important so I don't break it in a future version unintentionally.
- Commit, do not mess with Rakefile, version, or history. (if you want to have your own version, that is fine but bump version in a commit by itself in another branch so I can ignore when I pull)
- Send me a pull request. Bonus points for topic branches.

## Copyright
Copyright © 2011 Garrett Bjerkhoel. See [MIT-LICENSE](http://github.com/dewski/kss-rails/blob/master/MIT-LICENSE) for details.