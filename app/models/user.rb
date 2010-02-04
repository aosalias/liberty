class User < ActiveRecord::Base
  acts_as_authentic
  has_many :votes
  has_many :bills, :through => :votes, :uniq => true
  has_many :assignments
  has_many :roles, :through => :assignments, :uniq => true

  before_create { |u| u.roles = [Role.user] }

  def role_symbols
    roles.map do |role|
      role.name.underscore.to_sym
    end
  end

  def voted_on?(bill_id)
    !self.votes.find_by_bill_id(bill_id).nil?
  end

  def voted_yes_on?(bill_id)
    v = self.votes.find_by_bill_id(bill_id)
    v.yes? if v
  end

  def voted_no_on?(bill_id)
    v = self.votes.find_by_bill_id(bill_id)
    v.no? if v
  end
end
