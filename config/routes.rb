Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'level0#index'

  get '/level0' => 'level0#index'
  get '/level1' => 'level1#index'
  get '/level2' => 'level2#index'
  get '/level3' => 'level3#index'
  get '/level4' => 'level4#index'
  get '/level5' => 'level5#index'
  get '/footer' => 'include#footer'

  resources 'home', only: [:index, :home]
  resources 'level0'
  resources 'level1'
  resources 'level2'
  resources 'level3'
  resources 'level4'
  resources 'level5'

end
