Rails.application.routes.draw do

  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  get 'users/new'


  root 'static_pages#home'


  get  '/ales',    to: 'users#ales'
  get  '/spirits',    to: 'users#spirits'
  get  '/story',    to: 'users#story'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  get  '/prologue',    to: 'users#prologue'
  get  '/leviathan_bread',    to: 'users#leviathan_bread'
  get  '/daniel_cries',    to: 'users#daniel_cries'
  get  '/bolide_rodeo',    to: 'users#bolide_rodeo'
  get  '/saltlick_jukebox',    to: 'users#saltlick_jukebox'
  get  '/boardroom',    to: 'users#boardroom'
  get  '/pocketwatch',    to: 'users#pocketwatch'
  get  '/seasons',    to: 'users#seasons'


  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]


end
