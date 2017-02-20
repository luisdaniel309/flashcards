Rails.application.routes.draw do

  get 'decks/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  'static_pages#home'
  resources :cards
  resources :decks
end
