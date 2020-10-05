class Test < ApplicationRecord
    has_many :tests
    belongs_to :customer
end
