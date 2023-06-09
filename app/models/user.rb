class User < ApplicationRecord
  has_many :cars, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  # has_many :reviews, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
