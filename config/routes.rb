Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers

  #Routes for pokemons_controller
  patch '/capture/:id/', to: 'pokemons#capture', as: 'capture'
  post "damage/:id", to: "pokemons#damage", as: 'damage'
  get "pokemons/new", to: "pokemons#new", as: 'new_pokemon'
  post "pokemons/create", to: "pokemons#create", as: 'create_pokemon'
end
