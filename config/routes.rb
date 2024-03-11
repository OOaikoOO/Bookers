Rails.application.routes.draw do
  get 'books/new'
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  resources :books
  get 'books/:id/edit' => 'books#edit'
  root to: 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
