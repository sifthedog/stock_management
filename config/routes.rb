Rails.application.routes.draw do
  get "/404" => "errors#not_found"
  get "/500" => "errors#exception"
  
  resources :stock_items
  resources :products
  resources :stores
end
