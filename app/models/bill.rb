class Bill < ActiveRecord::Base

  validates_presence_of :name
  has_many :votes

#  named_scope :passed, :conditions => {:where => "yes_votes > no_votes"}
  def yes_votes
    votes.yes.count
  end

  def no_votes
    votes.no.count
  end

  def vote_no
    self.no_votes += 1
    save
  end

  def vote_yes
    self.yes_votes += 1
    save
  end

  def self.feature_bill
    Bill.first
  end

end
