class Participation < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :game
  belongs_to :user

  validates_presence_of :game, :user
end
