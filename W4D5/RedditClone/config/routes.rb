Rails.application.routes.draw do
  resources :users, only: [:new, :create, :destroy, :update, :edit, :show]
  resource :session, only: [:new, :create, :destroy]
  resources :subs do
    resources :posts, only: :index
  end
  resources :posts, only: [:new, :create, :destroy, :update, :edit, :show]
end
