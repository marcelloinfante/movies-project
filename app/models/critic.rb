class Critic < ApplicationRecord
  validates :author, :score, :avaliation, presence: true, length: { maximum: 50 }
  belongs_to :movies
end
