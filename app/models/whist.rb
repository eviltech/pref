class Whist < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :participation, :user

  validates_presence_of :participation, :user
end
