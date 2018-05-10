Rails.application.routes.draw do
  resources :cocktails, only: [ :index, :show, :new, :create ] do
    resources :doses, only: [ :new, :create ]
  end
  resources :doses, only: [ :destroy ]
end


# CocktailsController
#   routing
#     routes to #index (FAILED - 16)
#     routes to #new
#     routes to #show (FAILED - 17)
#     routes to #create (FAILED - 18)

# DosesController
#   routing
#     routes to #new (FAILED - 19)
#     routes to #create (FAILED - 20)
#     routes to #destroy (FAILED - 21)
