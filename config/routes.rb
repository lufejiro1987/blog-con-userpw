Rails.application.routes.draw do
  root 'main#index'
  resources :posts, except: [:index] do
    collection do
      get 'dashboard', to: 'posts#index', as: 'dashboard'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
