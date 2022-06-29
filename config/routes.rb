Rails.application.routes.draw do
  root to: 'menus#home'
  get 'profile', to: 'menus#profile'
  resource :contacts, only: [:new, :create] do
    get "/thanks" => "contacts#thanks"
   end
end
