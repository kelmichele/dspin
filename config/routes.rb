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

  get '/book1', to: 'links#book1'
  get '/book2', to: 'links#book2'
  get '/fb', to: 'links#fb'
  get '/insta', to: 'links#insta'
  get '/asher', to: 'links#asher'
  get '/ff', to: 'links#ff'
  get '/fab', to: 'links#fab'

  resources :requests
  resources :events do 
    member do
      delete :delete_image_attachment
    end
  end
end
