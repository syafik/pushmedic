Pushmedic::Application.routes.draw do

  root to: 'home#index'

  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  match "/contact"  => "home#contact",  :as => "contact",   :via => :get
  match "/about"    => "home#about",    :as => "about",     :via => :get
  match "/product"  => "home#product",  :as => "product",   :via => :get
  match "/product/:id"  => "home#product_show", :as => "product_show", :via => :get
  match "/send_message" => "home#send_message", :as => "send_message", :via => :post

end
