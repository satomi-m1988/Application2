Rails.application.routes.draw do
  get 'top' => 'books#top' #URLtopにアクセスした時にbooksコントローラの
  #topアクションが呼び出されるようにした記述

  # get 'books/index'下のresourcesを入れる時に消した４行
  # get 'books/show'
  # get 'books/new'
  # get 'books/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  root to: 'books#top'
  # ↑この１行でindexからdestroyまで７つのルーティングが定義される。
end
