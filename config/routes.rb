Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :tombstones, except: [:index, :destroy]

  root 'tombstones#new'
end
