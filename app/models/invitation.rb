class Invitation < ActiveRecord::Base
  belongs_to :game
  belongs_to :user
  attr_accessible :status

  def accepted?
    self.status == "accepted"
  end

  def pending?
    self.status == "pending"
  end

  def rejected?
    self.status == "rejected"
  end
end
