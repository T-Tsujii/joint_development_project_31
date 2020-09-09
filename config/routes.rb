Rails.application.routes.draw do
  # ルーティング定義
  resources :users

  resources :tasks
end
