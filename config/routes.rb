Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'level0#show'

  get '/footer' => 'include#footer'

  resources 'home', only: [:index, :home]
  resources 'navigation'
  resources 'level0'
  resources 'level1'
  resources 'level2'
  resources 'level3'
  resources 'level4'
  resources 'level5'

end
