Rails.application.routes.draw do
	root 'pages#home'
  
  # controller "pages" do
  # 	get 'stone'
	# 	get 'case'
  # end

  resources :stones, only: [:show, :index]
  resources :examples, only: [:show, :index]
  resources :techniques, only: [:show, :index]

  post "/inquire", to: "mails#inquire"

  namespace "admin" do
  	resources :stones
  	resources :examples
  	resources :techniques
    controller "ads" do
      post 'ads/toggle', as: "toggle_ads"
    end
    resources :attachments, only: [:destroy] do
      member do
        post "set_cover"
      end      
    end
  end
  
  devise_for :admins

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
