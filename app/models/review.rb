class Review < ApplicationRecord
  belongs_to :restaurant

  RATING = (0..5)

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: RATING }, numericality: { only_integer: true }
end
