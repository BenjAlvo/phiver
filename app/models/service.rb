class Service < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :price, :numericality => {greater_than_or_equal_to: 1}

  mount_uploader :photo, PhotoUploader

  def rating_average
    all = self.reviews.pluck(:rating)
    if all.blank?
      0
    else
      average = all.sum / all.count
      average
    end
  end
end
