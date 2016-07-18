Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  authenticated :user do
    root to: "users#index", as: :authenticated_root
  end

  unauthenticated do
    root to: "welcome#index", as: :unauthenticated_root
  end
end
