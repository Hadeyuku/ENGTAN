class Favorite < ApplicationRecord
    belong_to :customer
    has_many :words
end
