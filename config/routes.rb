Rails.application.routes.draw do
  resources :albums
  resources :groups
  devise_for :users, controllers: {
    sessions: 'user/sessions',
    registrations: 'user/registrations',
    confirmations: 'user/confirmations',
    unlocks: 'user/unlocks',
    passwords: 'user/passwords',
    omniauth_callbacks: 'user/omniauth_callbacks',
  }, :path => '', :path_names => {
    :sign_in => 'login',
    :sign_up => 'register',
    :sign_out => 'logout'
  }

  root :to => "home#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
