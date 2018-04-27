Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # The priority is based upon order of creation: first created ‐> highest priority.
  # See how all your routes lay out with "rake routes".
  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  # Example of regular route:
  # get 'products/:id' => 'catalog#view'
  # Example of named route that can be invoked with purchase_url(id: product.id)
  # get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
  # Example resource route (maps HTTP verbs to controller actions automatically):
  # resources :products
  # Example resource route with options:
  # resources :products do
  # member do
  # get 'short'
  # post 'toggle'
  # end
  #
  # collection do
  # get 'sold'
  # end
  # <% logic such as if statements
  # <%= its used output to the screen
  root 'pages#home' #erisim url
  #get 'about' => 'pages#about' #erisim url/about
  get 'pages/about' #erisim url/pages/about
  get 'pages/products' #erisim url/pages/products
  get 'pages/form' #erisim url/pages/form
  get 'pages/help' #erisim url/pages/help
  get 'pages/authenticate' #erisim url/pages/authenticate
  get 'pages/logout' #erisim url/pages/authenticate
  get 'pages/edit' #erisim url/pages/authenticate
  get 'users/login' #erisim url/pages/help
  resources :pages
  resources :users
  end
