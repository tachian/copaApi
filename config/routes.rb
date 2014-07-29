require 'api_constraints'

CopaApi::Application.routes.draw do

  # scope module: 'api', defaults: {format: :json}, constraints: {format: :json} do
  scope module: 'api' do
    # API Version 1
    constraints ApiConstraints.new(1) do
      scope module: 'v1' do

        resources :companies

        resources :teams do
          resources :members
        end

        resources :members

        resources :simple_questions do
          resources :simple_question_alternatives
          resources :test_guide_basics
        end

        resources :simple_question_alternatives

        resources :group_questions do
          resources :test_guide_basics
          resources :group_question_statements do
            resources :group_question_alternatives
          end
        end

        resources :group_question_statements do
          resources :group_question_alternatives
        end
        
        resources :group_question_alternatives        

        resources :tests do
          resources :test_guide_basics
          resources :test_guide_analyses
        end

        resources :test_types do
          resources :test_guide_basics
        end

        resources :test_guide_basics

        resources :test_guide_analyses do
          resources :test_guide_scenarios
        end

        resources :test_guide_scenarios do          
          resources :test_guide_scenario_sas  
          resources :test_guide_scenario_aps
        end

        

      end
    end
  end

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
