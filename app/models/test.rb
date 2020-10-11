class Test < ApplicationRecord
    has_many :test_words
    belongs_to :customer
end
