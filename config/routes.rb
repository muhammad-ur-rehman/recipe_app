Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  root :to => redirect('/api-docs')

  resources :meals, only: %i(index show)
  resources :categories, only: %i(index)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
