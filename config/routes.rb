Rails.application.routes.draw do

    root 'products#index'
    post '/' => 'products#add'

#post '/products/add' => 'products#add'
end
