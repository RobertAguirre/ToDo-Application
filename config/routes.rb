Rails.application.routes.draw do

  root 'welcome#index'
  resources :todo_lists do
    resources :todo_items
  end

  # get 'users/show'
  # resources :users do
  #   end
  # end



  # get 'welcome/show' => 'welcome#show'

  devise_for :users, controllers: { registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
