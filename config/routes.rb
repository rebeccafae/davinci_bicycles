Rails.application.routes.draw do

  root 'bikes#index'

  get 'bikes/new' => 'bikes#new', as: 'new_bike'

  post 'bikes' => 'bikes#create'

  get 'bikes/:id/edit' => 'bikes#edit', as: 'edit_bike'

  get 'bikes/:id' => 'bikes#show', as: 'bike'

  patch 'bikes/:id' => 'bikes#update'
end
