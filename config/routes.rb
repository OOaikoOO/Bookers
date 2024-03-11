Rails.application.routes.draw do
  get 'books/new'
  root to: 'homes#top'
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  resources :books
  patch 'books/:id', to: 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
