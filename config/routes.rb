Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  get 'capture', to: "pokemons#capture"
  get 'damage/:id', to: "pokemons#damage", as: :damage
  get 'pokemons/new', to: "pokemons#new", as: :new_pokemon
  post 'pokemons/new', to: "pokemons#create"
end
