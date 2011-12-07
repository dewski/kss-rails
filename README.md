KSS Rails
=========

KSS Rails provides a Rails 3 engine for you to mount onto your existing Rails 3 application that will automatically parse your stylesheets that live within `app/assets/stylesheets` and give you a styleguide visible at whichever URL you choose.

```ruby
Example::Application.routes.draw do
  root :to => 'home#index'

  mount Kss::Engine => '/kss' if Rails.env.development?
end
```