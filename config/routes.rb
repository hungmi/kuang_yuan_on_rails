Rails.application.routes.draw do
  root 'pages#home'
  
  controller "pages" do
  	get 'stone'
		get 'example'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
