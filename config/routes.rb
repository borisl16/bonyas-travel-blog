Rails.application.routes.draw do
  
  resources :elements
  root to: 'home#index'
  devise_for :authors

  scope module: 'authors' do
    resources :posts do
      resources :elements
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
