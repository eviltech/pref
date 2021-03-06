class Game < ActiveRecord::Base
  include AASM

  validates_presence_of :ratio
  validates_numericality_of :ratio, greater_than: 0

  has_many :participations
  has_many :users, through: :participations

  aasm do
    state :pending, initial: true
    state :running
    state :closed

    event :run do
      transitions from: :pending, to: :running
    end

    event :close do
      transitions from: [:pending, :running], to: :closed
    end
  end

  attr_accessible :ratio
end
