Rails.application.routes.draw do
  # ログインとか
  get    '/',  to: 'sessions#new'
  post   '/',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # 検索とか
  get '/search',  to: 'users#index'
end
