GolfBoxBackend::Application.routes.draw do
  resources :sponsors
  resources :news
  resources :venues
  resources :clubs do 
    resources :news
    resources :venues
  end

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end