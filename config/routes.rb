Rails.application.routes.draw do
  resources :room_evaluations

  resources :conversations do
    resources :messages
  end

  devise_for :users, controllers: {
        sessions: 'users/sessions'}

  resources :study_groups do
    resources :users
  end


  resources :study_groups do
    member do
      get 'join'
    end
  end

  resources :courses do
    member do
      get 'subscribe'
    end
  end

  resources :courses do
    resources :users
  end

  resources :courses do
    resources :notes
  end
#  resources :study_rooms do
#    member do
#      get 'evaluate'
#    end
#  end

  resources :study_rooms do
    resources :study_groups
  end

  resources :users do
    member do
      get 'subscriptions'
    end
  end

  resources :courses do
    member do
      get 'unsubscribe'
    end
  end

  resources :users do
    resources :study_rooms
  end


  resources :study_group_users
  resources :courses

  resources :notes
  resources :study_rooms
  resources :external_events
  resources :search_tutorials
  resources :offer_tutorials
  resources :study_groups
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #devise_for :users
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
