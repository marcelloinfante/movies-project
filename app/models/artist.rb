class Artist < ApplicationRecord
  validates :first_name, :last_name, :age, presence: true, length: { maximum: 50 }
  has_and_belongs_to_many :movies, dependent: :destroy
end
