class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :test_words
    has_many :words
    has_many :tests
    has_many :favorites, dependent: :destroy

    enum status: { 初心者: 0, 中級者: 1, 上級者: 2}
end
