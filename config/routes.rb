Rails.application.routes.draw do
  root 'homes#top'
  get "users/mypage" => "users#show"
  get "users/edit" => "users#edit"
  patch "users/update" => "users#update"
  devise_for :users
  resources :items
  get 'orders/thanks'
  resources :orders, only: [:index, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


