Rails.application.routes.draw do
  root to: 'home#index'
  get '/trang-chu', to: 'home#index'
  get '/loai-mon-an/:category_id', to: 'food#index'
  get '/tai-khoan', to: 'account#index'
  get '/tim-kiem', to: 'search#index'
  get '/gioi-thieu', to: 'info#index'
  get '/dieu-khoan', to: 'info#policy'
  get '/:food_url', to: 'food#show', food_url: /[a-zA-Z0-9-]+/
  get '/auth/:provider/callback', to: 'account#create_client_auth'
  get '/auth/failure', to: redirect('/')
  get '/tai-khoan/dang-xuat', to: 'account#destroy'
  get '/admin/dau-bep', to: 'admin#index'
  get '/gio-hang/xoa/:id', to: 'cart#delete'
  get '/gio-hang/chi-tiet', to: 'cart#index'
  get '/thanh-toan/hoa-don', to: 'payment#index'
  get '/hoa-don/chi-tiet', to: 'payment#success'
  post '/tai-khoan/them', to: 'account#create'
  post '/tai-khoan/dang-nhap', to: 'account#login'
  post '/gio-hang/them', to: 'cart#create'
  post '/gio-hang/cap-nhat', to: 'cart#update'
  post '/thanh-toan/them', to: 'payment#create'
end
