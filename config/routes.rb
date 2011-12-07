Kss::Engine.routes.draw do
  get '/styleguide' => 'home#styleguide'
  
  root :to => 'home#index'
end
