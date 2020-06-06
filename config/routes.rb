Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/pro1", to: "welcome#pro1"
  get "/pro2", to: "welcome#pro2"
end
