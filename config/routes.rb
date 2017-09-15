Rails.application.routes.draw do

  get 'users/show'

  root 'welcome#index'

  get 'welcome/show' => 'welcome#show'

  devise_for :users, controllers: { registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
