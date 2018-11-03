Rails.application.routes.draw do
  root "welcome#about"

  devise_for :users

  resources :messages
  resources :chatrooms, param: :slug

  # root to: 'rooms#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount ActionCable.server => '/cable'
end
