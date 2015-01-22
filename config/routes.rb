Rails.application.routes.draw do
  resources :eigyosyos

  root :to => 'descriptions#index'
  
  resources :zetsufudaichos

  get 'naisenchosahyou/index'

  get 'map/index'

  resources :descriptions

get 'kofus/:id/show_one' => 'kofus#show_one' , as: 'show_one'
  
  resources :riyu_okunais

  resources :riyu_monshins

  resources :chosajisseki_codes

  resources :chosakekka_codes

  resources :zaitakus

  resources :tenkis

  resources :jyoutai_umufukanous

  resources :jyoutai_umumijisshis

  resources :jyoutai_umus

  resources :sokuteis

  resources :monshins

  resources :okugais

  resources :okunais

  resources :tenkenkekkas

  resources :houmons

  resources :kofus

  resources :keiyakus
 
  resources :chosains

  get 'mikofu_keiyakus' => 'keiyakus#mikofuindex'

  post 'create_kofus' => 'kofus#addKofus'
 
  #get '/signin/:id/chosain_select' => 'logindatas#chosain_select' 
  resources :logindatas, only: [:create, :destroy]
  get    '/signin(/:kyoukaicode)'  => 'logindatas#new' , as: 'signin'
  #get    '/signin'  => 'logindatas#new'
  delete '/signout' => 'logindatas#destroy'

  ###################
  # for KAZOMI-chan #
  ###################
  get 'chosains/eigyosyo_mem/:code' => 'chosains#eigyosyo_mem'


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
