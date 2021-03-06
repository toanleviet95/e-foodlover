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
  get '/gio-hang/xoa/:id', to: 'cart#delete'
  get '/gio-hang/chi-tiet', to: 'cart#index'
  get '/thanh-toan/hoa-don', to: 'payment#index'
  get '/hoa-don/chi-tiet', to: 'payment#success'
  get '/admin/thanh-vien/quan-ly-mon-an', to: 'admin#foods'
  get '/admin/thanh-vien/quan-ly-mon-an/them', to: 'admin#foods_add'
  get '/admin/thanh-vien/quan-ly-mon-an/cap-nhat/:food_id', to: 'admin#foods_edit'
  get '/admin/thanh-vien/quan-ly-hoa-don', to: 'admin#invoices'
  get '/admin/quan-tri', to: 'admin_login#index'
  get '/admin/quan-tri/quan-ly-tai-khoan', to: 'admin#accounts'
  post '/tai-khoan/them', to: 'account#create'
  post '/tai-khoan/dang-nhap', to: 'account#login'
  post '/gio-hang/them', to: 'cart#create'
  post '/gio-hang/cap-nhat', to: 'cart#update'
  post '/thanh-toan/them', to: 'payment#create'
  post '/mon-an/them', to: 'food#create'
  patch '/mon-an/cap-nhat/:food_id', to: 'food#edit'
  put '/mon-an/cap-nhat-trang-thai/:food_id', to: 'food#edit_status'
  put '/hoa-don/cap-nhat-trang-thai/:invoice_id', to: 'invoice#edit_status'
  put '/tai-khoan/cap-nhat-trang-thai/:account_id', to: 'account#edit_status'
  delete '/mon-an/xoa/:food_id', to: 'food#delete'
  delete '/hoa-don/xoa/:invoice_id', to: 'invoice#delete'
end
