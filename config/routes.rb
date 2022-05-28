Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "posts#index"

  
  resources :posts do
   post "like/:record_type/:record_id", to: "likes#like_toggle", as: "like_record"
  # Defines the root path route ("/")
  end
end
