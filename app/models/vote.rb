class Vote < ActiveRecord::Base
  belongs_to :bill
  belongs_to :user
  validates_inclusion_of :yes, :in => [true, false]
  validates_presence_of :bill
  validates_presence_of :user
  validates_uniqueness_of :bill_id, :scope => :user_id


  named_scope :yes, :conditions => {:yes => true}
  named_scope :no, :conditions => {:yes => false}

  def no
    !yes?
  end

  def no?
    !yes?
  end
end
