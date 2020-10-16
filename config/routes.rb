Rails.application.routes.draw do

  devise_for :admins, controllers: {
    sessions: "admins/sessions"
  }

  devise_for :customers, controllers: {
    registrations: "customers/registrations",
    sessions: "customers/sessions",
  }
  namespace :admins do
    resources :words
    resources :customers, only: [:edit, :update, :index, :show]
  end

  scope module: :public do
    root 'homes#top'
    get 'about' => 'homes#about'
    get 'profile' => 'homes#profile'
    get '/customers/mypage' => 'customers#show',as: 'mypage'
    get '/customers/mypage/edit' => 'customers#edit', as: 'edit_customer'
    patch '/customers/mypage' => 'customers#update', as: 'update_customer'
    resources :words do
      resource :favorites, only: [:create, :destroy]
    end
    resources :test_words, only: [:new, :create]
    resources :tests
    get '/test/:id/start' => 'test#start', as: 'start_test'
    post '/test/:id/confirm' => 'test#confirm', as: 'confirm_test'

  end

end
