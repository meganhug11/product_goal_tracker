Rails.application.routes.draw do

  # Route for homepage
  get "/", :controller => "home", :action => "show"

  # Routes for the Competency resource:
  # CREATE
  get "/competencies/new", :controller => "competencies", :action => "new"
  post "/create_competency", :controller => "competencies", :action => "create"

  # READ
  get "/competencies", :controller => "competencies", :action => "index"
  get "/competencies/:id", :controller => "competencies", :action => "show"

  # UPDATE
  get "/competencies/:id/edit", :controller => "competencies", :action => "edit"
  post "/update_competency/:id", :controller => "competencies", :action => "update"

  # DELETE
  get "/delete_competency/:id", :controller => "competencies", :action => "destroy"
  #------------------------------

  # Routes for the Goal_note resource:
  # CREATE
  get "/goal_notes/new", :controller => "goal_notes", :action => "new"
  post "/create_goal_note", :controller => "goal_notes", :action => "create"

  # READ
  get "/goal_notes", :controller => "goal_notes", :action => "index"
  get "/goal_notes/:id", :controller => "goal_notes", :action => "show"

  # UPDATE
  get "/goal_notes/:id/edit", :controller => "goal_notes", :action => "edit"
  post "/update_goal_note/:id", :controller => "goal_notes", :action => "update"

  # DELETE
  get "/delete_goal_note/:id", :controller => "goal_notes", :action => "destroy"
  #------------------------------

  # Routes for the Meeting_note resource:
  # CREATE
  get "/meeting_notes/new", :controller => "meeting_notes", :action => "new"
  post "/create_meeting_note", :controller => "meeting_notes", :action => "create"

  # READ
  get "/meeting_notes", :controller => "meeting_notes", :action => "index"
  get "/meeting_notes/:id", :controller => "meeting_notes", :action => "show"

  # UPDATE
  get "/meeting_notes/:id/edit", :controller => "meeting_notes", :action => "edit"
  post "/update_meeting_note/:id", :controller => "meeting_notes", :action => "update"

  # DELETE
  get "/delete_meeting_note/:id", :controller => "meeting_notes", :action => "destroy"
  #------------------------------

  # Routes for the Competency_note resource:
  # CREATE
  get "/competency_notes/new", :controller => "competency_notes", :action => "new"
  post "/create_competency_note", :controller => "competency_notes", :action => "create"

  # READ
  get "/competency_notes", :controller => "competency_notes", :action => "index"
  get "/competency_notes/:id", :controller => "competency_notes", :action => "show"

  # UPDATE
  get "/competency_notes/:id/edit", :controller => "competency_notes", :action => "edit"
  post "/update_competency_note/:id", :controller => "competency_notes", :action => "update"

  # DELETE
  get "/delete_competency_note/:id", :controller => "competency_notes", :action => "destroy"
  #------------------------------

  # Routes for the Goal resource:
  # CREATE
  get "/goals/new", :controller => "goals", :action => "new"
  post "/create_goal", :controller => "goals", :action => "create"

  # READ
  get "/goals", :controller => "goals", :action => "index"
  get "/goals/:id", :controller => "goals", :action => "show"

  # UPDATE
  get "/goals/:id/edit", :controller => "goals", :action => "edit"
  post "/update_goal/:id", :controller => "goals", :action => "update"

  # DELETE
  get "/delete_goal/:id", :controller => "goals", :action => "destroy"
  #------------------------------

  devise_for :employees

  root to: 'goals#index'
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
