Rails.application.routes.draw do
  resources :todo_lists do
    resources :todo_items do
      member do
        patch:complete
      end
    end
  end

  resources :users, only: [:index, :create]
  resources :sessions, only: [:create]
  root "users#index"
  get "log_out" => "sessions#destroy"
end
