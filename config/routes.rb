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
  get  '/sailing_to_mount_oligarch',    to: 'users#sailing_to_mount_oligarch'
  get  '/merlot_bot_hatches_a_plan',    to: 'users#merlot_bot_hatches_a_plan'
  get  '/wild_white_automoton',    to: 'users#white_wine_automoton'
  get  '/grim_persistence',    to: 'users#grim_persistence'
  get  '/ingot_exchange',    to: 'users#ingot_exchange'
  get  '/salt_peter_online',    to: 'users#salt_peter_online'
  get  '/the_ascent',    to: 'users#the_ascent'
  get  '/an_exquisite_vintage',    to: 'users#an_exquisite_vintage'
  get  '/tad_excessive',    to: 'users#tad_excessive'
  get  '/tiger_farm',    to: 'users#tiger_farm'
  get  '/taste_of_betrayal',    to: 'users#taste_of_betrayal'

  get  '/seasons',    to: 'users#seasons'
  get  '/world_map',    to: 'cards#world_map'

  get  '/privacy_policy',    to: 'users#privacy_policy'



  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]


end
