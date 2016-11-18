Rails.application.routes.draw do
  get 'favorites/index'

  root 'main#index'

  get 'show/:id' => 'main#show'

  post 'search' => 'main#search'

  resource :favorites

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
