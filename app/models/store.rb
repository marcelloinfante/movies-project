class Store < ApplicationRecord
  validates :name, :profit, :location, presence: true, length: { maximum: 50 }
  has_and_belongs_to_many :movies
end
