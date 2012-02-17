Rails.application.routes.draw do
  mount Invitable::Engine => '/invitable'

  root :to => 'home#show'
end
