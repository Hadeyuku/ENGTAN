class Test < ApplicationRecord
    has_many :test_words
    belongs_to :customer, optional: true

    enum status: { registered: 0, ongoing: 1, complete: 2 }
    enum genre: { SELFTAN: 0, ENGTAN: 1, random: 2 }
end
