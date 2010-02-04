ActionController::Routing::Routes.draw do |map|
  map.resources :user_sessions

  map.resources :users do |user|
    user.resources :votes, :controller => "users/votes"
  end

  map.resources :bills do |bill|
    bill.resources :votes, :controller => "bills/votes"
  end

  map.login "login", :controller => "user_sessions", :action => "new"

  map.logout "logout", :controller => "user_sessions", :action => "destroy"

  map.about "about", :controller => "home", :action => "about"


  map.root :controller => 'home', :action => 'home'


  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
