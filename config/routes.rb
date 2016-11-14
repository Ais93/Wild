Rails.application.routes.draw do
    
    root 'pages#home'
    get '/profile', to: 'users#profile'
    resources :users


 

end
