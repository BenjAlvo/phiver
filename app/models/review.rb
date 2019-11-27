class Review < ApplicationRecord
  belongs_to :user
  belongs_to :service

  validates :title, presence: true
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :rating, numericality: { only_integer: true }
end
