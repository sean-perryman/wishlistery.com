Rails.application.routes.draw do
  
  devise_for :users

  devise_scope :user do
    get "/register" => "devise/registrations#new"
    get "/log_in" => "devise/sessions#new"
  end

  root :to => 'landing#index'  
end