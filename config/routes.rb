Rails.application.routes.draw do
  root to: 'lists#index'

  resources :lists do
    resources :movies, only: [:index, :show]
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: :destroy
end
