KSS Rails
=========

KSS Rails provides a Rails 3 engine for you to mount onto your existing Rails 3 application that will automatically parse your stylesheets that live within `app/assets/stylesheets` and give you a styleguide visible at whichever URL you choose.

Install the gem:

```
gem install kss-rails
```

Add it to the development group within the `Gemfile` and re-bundle:

```ruby
group :development do
  gem 'kss-rails'
end
```

Run the install generator which will copy over some initial templates for you to base your styleguide definitions off of. There may be some extra changes to the layouts that you need to do, but that is dependent on how crazy your application is.

```
rails generate kss:install
```

The install generator will have already appended the route for KSS Rails for you at the '/kss' URL, but if you'd like to change that you can within your routes file.

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

## Credits

All credit goes to Kyle Neath for creating the KSS gem and hopefully this will allow people to create styleguides for every site they work on with little to no additional effort.

## Note on Patches/Pull Requests

- Fork the project.
- Make your feature addition or bug fix.
- Commit, do not mess with Rakefile, version, or history. (if you want to have your own version, that is fine but bump version in a commit by itself in another branch so I can ignore when I pull)
- Send me a pull request. Bonus points for topic branches.

## Copyright
Copyright © 2011 Garrett Bjerkhoel. See [MIT-LICENSE](http://github.com/dewski/kss-rails/blob/master/MIT-LICENSE) for details.