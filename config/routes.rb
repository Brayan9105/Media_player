Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/youtube', to: 'videos#youtube'
  get '/spotify', to: 'videos#spotify'
end
