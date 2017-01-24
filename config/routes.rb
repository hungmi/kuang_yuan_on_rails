Rails.application.routes.draw do
	root 'pages#home'
  
  # controller "pages" do
  # 	get 'stone'
	# 	get 'case'
  # end

  resources :stones, only: [:show, :index]
  resources :examples, only: [:show, :index]
  resources :techniques, only: [:show, :index]

  namespace "admin" do
  	resources :stones
  	resources :examples
  	resources :techniques
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
