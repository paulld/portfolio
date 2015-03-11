Rails.application.routes.draw do

  root 'static_pages#biography'
  # get 'biography'    => 'static_pages#biography',    as: 'biography'
  get 'portfolio'   => 'static_pages#portfolio',  as: 'portfolio'
  get 'skillset'    => 'static_pages#skillset',   as: 'skillset'
  # get 'contact'     => 'static_pages#contact',    as: 'contact'

  # match '/contact',     to: 'contacts#new',             via: 'get'
  # resources "contacts", only: [:new, :create]

  get 'contact'   => 'contacts#new', as: 'contact'
  post 'contact'  => 'contacts#create', as: 'contacts'

end
