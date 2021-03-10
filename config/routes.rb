Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'account', to: 'devise/sessions#show'
  end

  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get 'about', to: 'static_pages#about'
  get 'messages', to: 'static_pages#messages'
  get 'love-what-you-do', to: 'static_pages#love-what-you-do'
  get 'buy-the-book', to: 'static_pages#buy-the-book'
  get 'past-events', to: 'static_pages#past-events'
  get 'press', to: 'static_pages#press'
  get 'heart', to: 'static_pages#heart'
  get 'press-form', to: 'static_pages#press-form'

  get '/fabrik_book', to: 'links#fabrik_book'
  get '/amazon_book', to: 'links#amazon_book'
  get '/fb', to: 'links#fb'
  get '/insta', to: 'links#insta'
  get '/asher', to: 'links#asher'
  get '/ff', to: 'links#ff'
  get '/fab', to: 'links#fab'
  get '/twitter', to: 'links#twitter'


  resources :articles do 
    member do
      delete :delete_image_attachment
    end
  end

  resources :requests, :except => [:new]
  get '/speaking', to: 'requests#new', as: 'speaking'
  post '/speaking', to: 'requests#create'

  resources :features, :except => [:new]
  get '/feature-dana', to: 'features#new', as: 'feature-dana'
  post '/feature-dana', to: 'features#create'

  resources :events do 
    member do
      delete :delete_image_attachment
    end
  end
end
