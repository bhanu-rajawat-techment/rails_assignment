Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "tv_shows#index"

  resources :tv_shows, only: [] do
    member do
      get :make_favorite
    end
  end
end
