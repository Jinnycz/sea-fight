class Table < ActiveRecord::Base
  belongs_to :user
  belongs_to :game
  # attr_accessible :title, :body
end
