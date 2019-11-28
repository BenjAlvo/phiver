class Service < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true

  mount_uploader :photo, PhotoUploader

  def rating_average
    all = self.reviews.pluck(:rating)
    if all.blank?
      "no ratings yet!"
    else
      average = all.sum.to_f / all.count
      average
    end
  end
end
