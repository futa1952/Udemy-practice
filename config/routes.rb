Rails.application.routes.draw do
  root to: 'boards#index'
  get 'comments/create'
  get 'comments/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :boards
  resources :comments, only: [:create, :destroy]
end
