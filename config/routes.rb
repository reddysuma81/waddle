Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users

  resources :posts do
    member do
      put :change
    end
  end

  resources :users, only: [:edit, :show, :update]

  resources :categories

  root 'home#index'
end
