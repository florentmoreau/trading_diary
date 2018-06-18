Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    root to: 'dashboard#index', as: :authenticated_root
  end
  root to: 'pages#home'
  resources :journals do
    resources :trades
  end
  get "/index" => "dashboard#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
