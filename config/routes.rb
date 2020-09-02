Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    # GET /restaurants/:id/reviews/new
    # POST /restaurants/:id/reviews/create
    resources :reviews, only: [ :new, :create ]

    # /restaurants/top
    collection do
      get :top
    end

    # /restaurants/:id/chef
    member do
      get :chef
    end
  end

  # DELETE /reviews/:id
  resources :reviews, only: [ :destroy ]
end
