Rails.application.routes.draw do
  root to: 'home#index'
  get '/trang-chu', to: 'home#index'
  get '/loai-mon-an/:category_id', to: 'food#index'
  get '/tai-khoan', to: 'account#index'
  get '/tim-kiem', to: 'search#index'
end
