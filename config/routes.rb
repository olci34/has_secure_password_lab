Rails.application.routes.draw do
  resources :users do
    get 'home', to: 'welcome#homepage'
  end

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
