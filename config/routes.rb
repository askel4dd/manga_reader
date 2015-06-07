Rails.application.routes.draw do
  scope "/api" do
    resources :mangas, except: [:new, :edit]
  end
end
