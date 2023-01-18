Rails.application.routes.draw do

  resources :boards do
    resources :comments
  end

  get '/posts/index'

  get '/posts/new'

  post '/posts/create'

  get '/posts/destroy/:post_id' => 'posts#destroy'

  get 'posts/edit/:post_id' => 'posts#edit'

  post 'posts/update/:post_id' => 'posts#update'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
