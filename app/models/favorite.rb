class Favorite < ApplicationRecord
    belongs_to :customer
    has_many :words
end
