Rails.application.routes.draw do
  devise_for :users
  root to: "menus#home"
  resources :news
  get "profile", to: "menus#profile"
  get "live", to: "menus#live"
  get "movie", to: "menus#movie"
  get "goods", to: "menus#goods"
  resource :contacts, only: [:new, :create] do
    get "/thanks" => "contacts#thanks"
   end
  resources :users, only: :show
end
