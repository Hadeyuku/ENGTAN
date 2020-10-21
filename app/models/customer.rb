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

    def registered
      where(status: 'registered')
    end

    def ongoing
      where(status: 'ongoing')
    end

    def complete
      where(status: 'complete')
    end
end
