Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :news, only: [:index], defaults: { format: 'json' }
      resources :help_requests, only: [:create], defaults: { format: 'json' }
    end
  end
end
