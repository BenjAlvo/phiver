class Review < ApplicationRecord
  belongs_to :user
  belongs_to :service

  validates :title, presence: true
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :rating, numericality: { only_integer: true }
  validates :rating, :numericality => {greater_than_or_equal_to: 0}
  validates :rating, :numericality => {smaller_than_or_equal_to: 5}
end
