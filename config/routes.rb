Rails.application.routes.draw do
  # ユーザー用
  scope module: :public do
    root to: 'homes#top'
  end
  
  # 管理者用
  namespace :admin do
    root to: 'homes#top'
  end
  
  # ユーザー用
# URL /users/sign_in ...
devise_for :users, controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# 管理者用
# URL /admin/sign_in ...
devise_for :admin, controllers: {
  sessions: "admin/sessions"
}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
