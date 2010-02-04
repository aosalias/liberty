class Role < ActiveRecord::Base
  has_many :assignments
  has_many :users, :through => :assignments, :uniq => true

  class << self
    Role.find(:all, :select => "name").collect(&:name).each do |name|
      define_method name.to_sym do
        self.find_by_name(name)
      end
    end
  end
end
