Rmd::Application.routes.draw do

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  resources :posts do      # creates comments 作为一个嵌套资源放在 posts 中。这正是 posts 和comments 的分层关系的表现
    resources :comments
  end

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end