JournalApp::Application.routes.draw do

  get "owners/index"

  get "owners/create"

  get "owners/new"

  get "owners/show"

  get "owners/edit"

  get "owners/update"

  get "owners/destroy"

  get "journals/index"

  get "journals/create"

  get "journals/new"

  get "journals/show"

  get "journals/edit"

  get "journals/update"

  get "journal/destroy"

  get "entries/index"

  get "entries/create"

  get "entries/new"

  get "entries/show"

  get "entries/edit"

  get "entries/update"

  get "entries/destroy"

  root  :to =>  "owners#index"

  resources :owners do
    resources :journals
  end

  resources :journals do
    resources :entries
  end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
#== Route Map
# Generated on 11 May 2011 00:42
#
#             owners GET    /owners(.:format)                                {:action=>"index", :controller=>"owners"}
#                    POST   /owners(.:format)                                {:action=>"create", :controller=>"owners"}
#          new_owner GET    /owners/new(.:format)                            {:action=>"new", :controller=>"owners"}
#         edit_owner GET    /owners/:id/edit(.:format)                       {:action=>"edit", :controller=>"owners"}
#              owner GET    /owners/:id(.:format)                            {:action=>"show", :controller=>"owners"}
#                    PUT    /owners/:id(.:format)                            {:action=>"update", :controller=>"owners"}
#                    DELETE /owners/:id(.:format)                            {:action=>"destroy", :controller=>"owners"}
#    journal_entries GET    /journals/:journal_id/entries(.:format)          {:action=>"index", :controller=>"entries"}
#                    POST   /journals/:journal_id/entries(.:format)          {:action=>"create", :controller=>"entries"}
#  new_journal_entry GET    /journals/:journal_id/entries/new(.:format)      {:action=>"new", :controller=>"entries"}
# edit_journal_entry GET    /journals/:journal_id/entries/:id/edit(.:format) {:action=>"edit", :controller=>"entries"}
#      journal_entry GET    /journals/:journal_id/entries/:id(.:format)      {:action=>"show", :controller=>"entries"}
#                    PUT    /journals/:journal_id/entries/:id(.:format)      {:action=>"update", :controller=>"entries"}
#                    DELETE /journals/:journal_id/entries/:id(.:format)      {:action=>"destroy", :controller=>"entries"}
#           journals GET    /journals(.:format)                              {:action=>"index", :controller=>"journals"}
#                    POST   /journals(.:format)                              {:action=>"create", :controller=>"journals"}
#        new_journal GET    /journals/new(.:format)                          {:action=>"new", :controller=>"journals"}
#       edit_journal GET    /journals/:id/edit(.:format)                     {:action=>"edit", :controller=>"journals"}
#            journal GET    /journals/:id(.:format)                          {:action=>"show", :controller=>"journals"}
#                    PUT    /journals/:id(.:format)                          {:action=>"update", :controller=>"journals"}
#                    DELETE /journals/:id(.:format)                          {:action=>"destroy", :controller=>"journals"}
