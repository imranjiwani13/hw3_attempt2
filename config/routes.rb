Rails.application.routes.draw do
  resources :places do
    resources :posts
  end

  root to: 'places#index'
end

