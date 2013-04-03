class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :nickname, :password, :password_confirmation, :remember_me, :last_online_at
  # attr_accessible :title, :body

  has_many :friendships
  has_many :friends, through: :friendships
  has_many :inverse_friendships, class_name: "Friendship", foreign_key: "friend_id"
  has_many :inverse_friends, through: :inverse_friendships, source: :user
  has_and_belongs_to_many :games
  has_many :tables
  has_many :invitations
  has_many :inviters, through: :invitations, source: :user

  scope :online, lambda{ where("last_online_at > ?", Time.now - 5.minutes) }

  def update_online
    self.last_online_at = Time.now
    self.save
  end
end
