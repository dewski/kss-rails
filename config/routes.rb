Kss::Engine.routes.draw do
  match '/section/:name' => 'home#section'

  root :to => 'home#index'
end
