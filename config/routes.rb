Rails.application.routes.draw do
  resources :signups, only: [:create, :update]
  resources :activities, only: [:index, :destroy, :show]
  resources :campers, only: [:create, :index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# post /campers
# get /campers
# get /campers/:id
# get /activities
# delete /activities/:id
# post /signups
# patch /signups/:id