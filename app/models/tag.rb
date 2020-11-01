class Tag < ApplicationRecord
	belongs_to :word, optional: true
end
