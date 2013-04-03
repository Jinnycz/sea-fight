class Game < ActiveRecord::Base
  # attr_accessible :title, :body

  has_and_belongs_to_many :players, class_name: "User"
  has_many :tables
  has_many :invitations
  has_many :invited_users, through: :invitations, source: :user
end
