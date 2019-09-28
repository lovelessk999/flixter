Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#index'

  # hookup for the instructor controller

  namespace :instructor do
    resources :courses, only: [:new, :create, :show]
  end

end
