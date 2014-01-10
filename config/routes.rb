GolfBoxBackend::Application.routes.draw do

  resources :images, :defaults => { :format => 'json' }
  resources :sponsors
  resources :news, :defaults => { :format => 'json' }
  resources :venues, :defaults => { :format => 'json' }
  resources :clubs do 
    resources :news
    resources :venues do 
      resource :image
    end
  end

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end