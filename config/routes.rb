Rails.application.routes.draw do
  get 'doses/new'

  get 'doses/create'

  get 'doses/delete'

  get 'cocktails/index'

  get 'cocktails/show'

  get 'cocktails/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end
