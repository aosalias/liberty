authorization do
  role :admin do
    has_permission_on [:bills_votes, :bills, :users_votes, :users], :to => [:index, :show, :new, :create, :edit, :update, :destroy] 
  end

  role :user do
    has_permission_on [:bills_votes], :to => [:create] do
      if_attribute :bill => is_not_in { user.bills }
    end
    has_permission_on [:users_votes], :to => [:index, :update, :destroy] do
      if_attribute :user => is { user }
    end
    has_permission_on [:users], :to => [:edit, :update, :destroy] do
      if_attribute :id => is { user.id }
    end
    has_permission_on [:bills], :to => [:index, :show]
  end

  role :guest do
    has_permission_on [:bills], :to => [:index, :show] 
    has_permission_on [:users], :to => [:new, :create]
  end
end