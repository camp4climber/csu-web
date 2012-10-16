Anchor::Application.routes.draw do
    resources :bookmarks
    resources :users
    root :to => "bookmarks#index"
    match "/signup" => "users#signup"
end
