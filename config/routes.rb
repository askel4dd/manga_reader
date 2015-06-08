Rails.application.routes.draw do
  scope "/api" do
    devise_for :users
    resources :mangas, except: [:new, :edit]
  end
end
