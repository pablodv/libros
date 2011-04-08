Libros::Application.routes.draw do
  devise_for :users, :controllers => { :sessions => "users/sessions" }

  resources :books

  root :to => 'books#index'

end
