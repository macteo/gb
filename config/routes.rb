GolfBoxBackend::Application.routes.draw do

  resources :images, :defaults => { :format => 'json' }
  resources :sponsors
  resources :news, :defaults => { :format => 'json' }
  resources :venues, :defaults => { :format => 'json' }
  resources :clubs do 
    resources :venues do 
      resource :image
      resources :news
    end
  end

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end