Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
  namespace :v1 do
    post '/users/', to: 'users#authorization_code'
    resources :places do
      resources :reviews
    end
    end
  end
end
