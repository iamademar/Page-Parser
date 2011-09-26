PageParser::Application.routes.draw do
  resources :posts, :only => [:show]
  root :to => 'pages#index'
end
