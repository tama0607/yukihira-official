Rails.application.routes.draw do
  root to: 'menus#home'
  get 'profile', to: 'menus#profile'  
end
