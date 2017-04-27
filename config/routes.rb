Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "cherry#index"
  get "/:id/cart.html" => "cherry#cart"
  get "/products.html" => "cherry#products"
  get "/checkout.html" => "cherry#checkout"
  get "/register.html" => "cherry#register"
  get "/contact.html" => "cherry#contact"
  get "/product_detail.html" => "cherry#product_detail"
  get "new" => "products#new"
  post "new" => "products#create"

  # resources :cherry
end
