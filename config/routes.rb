Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
   get "/ask", to: "questions#ask"
   get "/answer", to: "questions#answer"
end

  # verb "path", to: "controller#action"
  # get "/about", to: "pages#about"


  -----------------------------------------------------------




  Rails.application.routes.draw do
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
    get "ask", to: "questions#ask", as: :ask
    get "answer", to: "questions#answer", as: :answer
  end
