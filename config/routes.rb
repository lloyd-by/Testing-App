Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :posts
  namespace :users do
    get 'profile/:email', to: 'profiles#show', as: 'profile'
  end
  mount FieldTest::Engine, at: "field_test"

  root "posts#index"
end
