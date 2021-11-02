class Movie < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: { maximum: 50,
    too_long: "%{count} characters is the maximum allowed" }
  validates :description, presence: true, length: { in: 6..50 }
  validates :duration, presence: true, length: { maximum: 5 }, numericality: { only_integer: true }
  validates :price, presence: true, length: { maximum: 10 }, numericality: { only_float: true }

  has_and_belongs_to_many :stores, dependent: :destroy
  has_and_belongs_to_many :genres, dependent: :destroy
  has_and_belongs_to_many :artists, dependent: :destroy

  has_many :critic
  belongs_to :director

  # before_destroy do
  #   stores.destroy_all
  #   genres.destroy_all
  #   artists.destroy_all
  # end
end
