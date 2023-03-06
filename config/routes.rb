Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # verb "path", to: "controller#action"
  # get "/about", to: "pages#about"
  get 'ask', to: 'questions#ask'
  get 'answer', to: 'questions#answer'
end
