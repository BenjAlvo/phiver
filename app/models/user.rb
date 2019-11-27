class User < ApplicationRecord
# Include default devise modules. Others available are:
#:confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :services
  has_many :bookings
  has_many :reviews
  validates :name, presence: true, uniqueness: true
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
end
