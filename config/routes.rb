Rails.application.routes.draw do
  get "/" => "home#top"
  get "/order/picture" => "order#picture"
  get "/order/file_upload" => "order#file_upload"
  get "/order/take_picture" => "order#take_picture"

  post "/order/upload" => "order#upload"
  post "/order/upload2" => "order#upload2"
  get "/order/check" => "order#check"

  get '/order/new2' => "order#new2"
  get '/order/new' => "order#new"
  get "/order/preview" => "order#preview"




  post "/order/create" => "order#create"
  get "/order/confirm" => "order#confirm"

  post "/order/complete" => "order#complete"
  

get "/about" => "home#about"
get "/company" => "home#company"



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
