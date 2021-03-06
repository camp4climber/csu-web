Anchor::Application.routes.draw do
    resources :bookmarks, :except => [:index] do
        get 'popular', :on => :collection
        resources :taggings, :only => [:create, :destroy]
    end

    resources :users, :except => [:index, :new, :destroy]
    
    resources :tags, :only => [:index, :show]

    root :to => "public_pages#home"
    match "/signup" => "users#new"
    match "/login" => "sessions#new"
    match "/logout" => "sessions#destroy"
    match "/sessions" => "sessions#create", :via => :post
end
