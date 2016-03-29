Rails.application.routes.draw do
  
  
  get  'onboarding' => 'onboarding#index'
  post 'onboarding' => 'onboarding#continue'
    
  resources :users, only: [:index, :show] do
    collection do
      get 'list'
    end
    member do
      post 'impersonate'
    end
  end

  get '/hello/sign_out' => 'hello/authentication/sessions#sign_out'
  mount Hello::Engine => "/hello"
  # root to: 'root#index'
  root to: 'rooms#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
end
