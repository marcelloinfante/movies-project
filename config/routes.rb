Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  post 'movies/create', to: 'movies#create'
  get 'movies/read', to: 'movies#read'
  put 'movies/update', to: 'movies#update'
  delete 'movies/delete', to: 'movies#delete'

  post 'directors/create', to: 'directors#create'
  get 'directors/read', to: 'directors#read'
  put 'directors/update', to: 'directors#update'
  delete 'directors/delete', to: 'directors#delete'

  post 'artists/create', to: 'artists#create'
  get 'artists/read', to: 'artists#read'
  put 'artists/update', to: 'artists#update'
  delete 'artists/delete', to: 'artists#delete'

  post 'critics/create', to: 'critics#create'
  get 'critics/read', to: 'critics#read'
  put 'critics/update', to: 'critics#update'
  delete 'critics/delete', to: 'critics#delete'

  get 'genres/read'
  get 'stores/read'
end
