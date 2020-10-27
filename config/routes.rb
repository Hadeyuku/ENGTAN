Rails.application.routes.draw do

  devise_for :admins, controllers: {
    sessions: "admins/sessions"
  }

  devise_for :customers, controllers: {
    registrations: "customers/registrations",
    sessions: "customers/sessions",
  }

  devise_scope :customer do
    post 'customers/guest_sign_in', to: 'customers/sessions#new_guest'
  end

  namespace :admins do
    root "homes#top"
    get 'word_search' => 'words#search'
    get 'customer_search' => 'customers#search'
    resources :words
    resources :customers, only: [:edit, :update, :index, :show]
  end

  scope module: :public do
    root 'homes#top'
    get 'about' => 'homes#about'
    get 'profile' => 'homes#profile'
    get '/mypage' => 'customers#show',as: 'mypage'
    get '/mypage/edit' => 'customers#edit', as: 'edit_customer'
    patch '/mypage' => 'customers#update', as: 'update_customer'
    post 'customers/guest_sign_in', to: 'customers/sessions#new_guest'
    get 'search' => 'words#search'
    resources :words do
      resource :favorites, only: [:create, :destroy]
    end
    resources :test_words, only: [:new, :index, :create]
    resources :tests do
      member do
        get 'start'
        post 'answer'
        get 'answer', to: 'tests#show'
      end
    end

  end

end
