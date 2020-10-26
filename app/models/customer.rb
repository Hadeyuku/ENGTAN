class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
    has_many :test_words
    has_many :words
    has_many :tests
    has_many :favorites, dependent: :destroy

    enum status: { novice: 0, intermidiate: 1, advanced: 2}

    validates :first_name, presence: true
    validates :family_name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true


    def registered
      where(status: 'registered')
    end

    def ongoing
      where(status: 'ongoing')
    end

    def complete
      where(status: 'complete')
    end

    def full_name
      family_name + " " + first_name
    end

    def self.guest
      find_or_create_by!(email: 'guest@example.com') do |customer|
        customer.password = SecureRandom.urlsafe_base64
        customer.family_name = "ゲスト"
        customer.first_name = "ゲスト"

      end
    end
end
