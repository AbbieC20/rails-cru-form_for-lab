Rails.application.routes.draw do
  resources :artists, only: [:show, :new, :create, :edit, :update]
  patch 'artists/:id', to: 'artists#update'
  resources :genres, only: [:show, :new, :create, :edit, :update]
  patch 'genres/:id', to: 'genre#update'
  resources :songs, only: [:index, :show, :new, :create, :edit, :update]
  patch 'songs/:id', to: 'song#update'
end
