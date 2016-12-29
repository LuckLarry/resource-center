Rails.application.routes.draw do

  get 'series_images/index' , to: 'series_images#index', as: 'series_images'

  get 'series_images/new'

  get 'series_images/create'

  get 'series_images/update'

  post 'series_images/update'

  resources :skus
  get '/price_managements/index', :controller => 'price_managements', :action => 'index'
  post '/price_managements/index', :controller => 'price_managements', :action => 'index'
  get '/product_images/index', :controller => 'product_images', :action => 'index'
  post '/product_images/index', :controller => 'product_images', :action => 'index'
  get '/site_skus/index', :controller => 'site_skus', :action => 'index'
  post '/site_skus/index', :controller => 'site_skus', :action => 'index'
  get '/baby_managements/index', :controller => 'baby_managements', :action => 'index'
  post '/baby_managements/index', :controller => 'baby_managements', :action => 'index'
    
  resources :baby_managements
  resources :product_managements
  resources :price_managements
  resources :users
  resources :products
  resources :site_skus
  root 'sessions#create'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :product_images
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
