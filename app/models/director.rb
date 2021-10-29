class Director < ApplicationRecord
  validates :first_name, :last_name, :age, presence: true, length: { maximum: 50 }
  has_many :movies
end
