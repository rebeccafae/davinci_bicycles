Rails.application.routes.draw do

  root 'bikes#index'

  get 'bikes/new' => 'bikes#new', as: 'new_bike'

  post 'bikes' => 'bikes#create'

end
