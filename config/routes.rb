Rails.application.routes.draw do
  scope "/api" do
    resources :mangas, except: [:new, :edit]
    get 'tag/:tag', to: 'mangas#index', as: :tag
  end
end
