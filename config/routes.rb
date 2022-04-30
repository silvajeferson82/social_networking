Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users, controllers: {registrations: "users/registrations"}
=======
  devise_for :users
>>>>>>> 408f2b4fb944f13093b2b84c8d00636c3a818149
  devise_for :admins, skip: [:registrations], controllers: {sessions: 'admins/sessions'}

  namespace :admin do 
    root to: "home#index"
    resources :admins
    resources :users, only: :index
  end

  root to: "user/timeline#index"

  namespace :user do 

  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
