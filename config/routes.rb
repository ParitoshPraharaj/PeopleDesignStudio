TheDesignStudio::Application.routes.draw do
 
  get "sessions/sign_in"
  get "sessions/sign_out"
  get "websites/new"
  get "websites/lets_get_started"
  get "websites/create"
  #Custom GET Requests
  get 'notes/:title' => 'notes#show'
  get 'notes/edit/:title' => 'notes#edit'
    
  get "feedback_on_ideas/new"
  post "feedback_on_ideas/create"
  get "feedback_on_ideas/show"
  get "ideas/new"
  get "ideas/create"
  get "ideas/show"
  get "worlds/new"
  get "worlds/create"
  get "worlds/show"
  get "user/new"
  get "user/create"
  get "user/show"
  get "tasks/new"
  get "tasks/create"
  get "tasks/show"
  get "tasks/edit"
  get "tasks/update"
  get "tasks/delete"
  get "photos_from_around_the_world/index"
  delete "sign_out", to: "worlds#sign_out"
	
  root 'home#index'
    
  #Named Routes
	
  get "lets-get-started", to: "websites#lets_get_started", as: "lets_get_started"
  get "lets-begin-work", to: "websites#lets_begin_work", as: "lets_begin_work"
  get "lets-work-together", to: "people#lets_work_together", as: 'sign_up'
  get 'lets-start-again', to: 'worlds#lets_start_again'
  post 'sign_in', to: 'worlds#sign_in'
  
  get 'people/:email' => 'people#show'
  
  resources :projects
	
  resources :notes
  
  resources :worlds			
  
  resources :people
  
  resources :users
  
  resources :work
  
  resources :websites
  
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
