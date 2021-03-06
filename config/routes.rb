Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: "controller#action"
  resources :restaurants, except: [:edit, :update, :destroy] do
    resources :reviews, only: [:create]
  end
end
