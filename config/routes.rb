Rails.application.routes.draw do
  root to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  # ユーザ
  resources :users
  # マイページ
  resources :mypages
  # 関係人物
  resources :people do
    # 関係事物詳細
    resources :person_details
  end
  get '/person/search', to:'people#search'
  post '/person/search', to:'people#search'
  
end