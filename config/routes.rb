Rails.application.routes.draw do
  root to: 'menus#home'
  get 'profile', to: 'menus#profile'
  get 'live', to: 'menus#live'
  resource :contacts, only: [:new, :create] do
    get "/thanks" => "contacts#thanks"
   end
end
