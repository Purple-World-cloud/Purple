Rails.application.routes.draw do
  devise_for :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	#dashboard
	get "/feed" => "accounts#feed"	
	get "/explore" => "accounts#explore"	
	get "/msg" => "accounts#msg"	
	get "/stats" => "accounts#stats"	
	get "/show/:username" => "accounts#show", as: :show	 # for profile
 	post "follow/account" => "accounts#follow_account", as: :follow_account
	 # for likes
	root to: "home#index"
	
    resources :conversations do
		resources :messages
	end
	resources :comments, only: [:create]
	resources :posts do
		member do
			put "like" => "posts#vote"
	
		end
	end
	
end
