Libros::Application.routes.draw do
  devise_for :users

  resources :books

  root :to => 'books#index'

end
