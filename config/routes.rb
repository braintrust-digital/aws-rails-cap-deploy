Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  resources :videos, only: [:index, :show]

  authenticate :user, lambda { |u| u.admin? } do
    resources :videos
  end

  get 'pages/home'
  root 'pages#home'
  match '/send_mail', to: 'pages#send_mail', via: 'post'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
